package com.duke.webapp.service;

import com.duke.webapp.Dao.Event;
import com.duke.webapp.Dao.NetworkDAO;
import com.duke.webapp.Dao.Person;
import com.duke.webapp.service.FirebaseService;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.DependsOn;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;

@Service
public class Events {
    @Autowired
    FirebaseService fireBaseService;
    @Autowired
    NetworkDAO networkDAO;
    List<Event> events;


    @PostConstruct
    public void init() throws Exception {
        parseJson();
    }

    public void parseJson() throws Exception {
        this.events = new ArrayList<Event>();

        String rawJson = networkDAO.request("https://calendar.duke.edu/events/index.json?&future_days=5&feed_type=simple");

        JSONObject root = new JSONObject(rawJson);

        JSONArray events = root.getJSONArray("events");

        for(int i = 0; i < events.length(); i++) {
            // the JSON data
            JSONObject jsonEvent = events.getJSONObject(i);
            // Plant object that we will populate from JSON data.
            Event event = new Event();
            String id = jsonEvent.getString("id");
            String start_timestamp = jsonEvent.getString("start_timestamp");
            String end_timestamp = jsonEvent.getString("end_timestamp");
            String summary = jsonEvent.getString("summary");
            String description = jsonEvent.getString("description");
            String status = jsonEvent.getString("status");
            String sponsor = jsonEvent.getString("sponsor");

            JSONArray co_sponsors = jsonEvent.getJSONArray("co_sponsors");
            List<String> cosponsorList = new ArrayList<>();
            for(int j = 0; j < co_sponsors.length(); j++) {
                 cosponsorList.add(String.valueOf((co_sponsors.get(j))));
            }

            JSONObject location = jsonEvent.getJSONObject("location");
            Map<String, String> locationMap = new HashMap<>();
            locationMap.put("address", String.valueOf(location.get("address")));
            locationMap.put("link", String.valueOf(location.get("link")));

            JSONObject contact = jsonEvent.getJSONObject("contact");
            Map<String, String> contactMap = new HashMap<>();
            contactMap.put("name", String.valueOf(contact.get("name")));
            contactMap.put("email", String.valueOf(contact.get("email")));
            contactMap.put("phone", String.valueOf(contact.get("phone")));

            JSONArray categories = jsonEvent.getJSONArray("categories");
            List<String> categoriesList = new ArrayList<>();
            for(int x = 0; x < categories.length(); x++) {
                categoriesList.add(String.valueOf(categories.get(x)));
            }


            String link = jsonEvent.getString("link");
            String event_url = jsonEvent.getString("event_url");

            JSONArray submitted_by = jsonEvent.getJSONArray("submitted_by");
            List<String> submitted_byList = new ArrayList<>();
            for(int y = 0; y < submitted_by.length(); y++) {
                submitted_byList.add(String.valueOf(categories.get(y)));
            }

            String webcast_url = jsonEvent.getString("webcast_url");
            String series_name = jsonEvent.getString("series_name");
            String presenter = jsonEvent.getString("presenter");
            String image = jsonEvent.getString("image");
            String image_alt_text = jsonEvent.getString("image_alt_text");

            Map<String, String> useRecord = new HashMap<>();
            List<String> feedBack = new ArrayList<>();
            Map<String, List<String>> feedBackAns = new HashMap<>();

            // populate our DTO with this information,.
            event.setId(id);
            event.setStart_timestamp(start_timestamp);
            event.setEnd_timestamp(end_timestamp);
            event.setSummary(summary);
            event.setDescription(description);
            event.setStatus(status);
            event.setSponsor(sponsor);
            event.setCo_sponsors(cosponsorList);
            event.setLocation(locationMap);
            event.setContact(contactMap);
            event.setCategories(categoriesList);
            event.setLink(link);
            event.setEvent_url(event_url);
            event.setSubmitted_by(submitted_byList);
            event.setWebcast_url(webcast_url);
            event.setSeries_name(series_name);
            event.setPresenter(presenter);
            event.setImage(image);
            event.setImage_alt_text(image_alt_text);
            event.setUsersRecord(useRecord);
            event.setFeedBack(feedBack);
            event.setFeedBackAns(feedBackAns);

            // add the populated plant to our collection.
            this.events.add(event);

        }
    }


}
