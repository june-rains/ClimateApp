package com.duke.webapp.service;

import com.duke.webapp.Dao.Event;
import com.duke.webapp.Dao.NetworkDAO;
import com.duke.webapp.Dao.Person;
import com.duke.webapp.service.FirebaseService;
import org.json.JSONArray;
import org.json.JSONException;
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
            String id = null;
            try {
                id = jsonEvent.getString("id");
            } catch (JSONException e) {

            }
            String start_timestamp = null;
            try {
                start_timestamp = jsonEvent.getString("start_timestamp");
            } catch (JSONException e) {

            }
            String end_timestamp = null;
            try {
                end_timestamp = jsonEvent.getString("end_timestamp");
            } catch (JSONException e) {

            }
            String summary = null;
            try {
                summary = jsonEvent.getString("summary");
            } catch (JSONException e) {

            }
            String description = null;
            try {
                description = jsonEvent.getString("description");
            } catch (JSONException e) {

            }
            String status = null;
            try {
                status = jsonEvent.getString("status");
            } catch (JSONException e) {

            }
            String sponsor = null;
            try {
                sponsor = jsonEvent.getString("sponsor");
            } catch (JSONException e) {

            }

            JSONArray co_sponsors = null;
            try {
                co_sponsors = jsonEvent.getJSONArray("co_sponsors");
            } catch (JSONException e) {

            }
            List<String> cosponsorList = new ArrayList<>();
            try {
                for(int j = 0; j < co_sponsors.length(); j++) {
                     cosponsorList.add(String.valueOf((co_sponsors.get(j))));
                }
            } catch (Exception e) {

            }

            JSONObject location = null;
            try {
                location = jsonEvent.getJSONObject("location");
            } catch (JSONException e) {

            }
            Map<String, String> locationMap = new HashMap<>();
            try {
                locationMap.put("address", String.valueOf(location.get("address")));
            } catch (JSONException e) {

            }
            try {
                locationMap.put("link", String.valueOf(location.get("link")));
            } catch (JSONException e) {

            }

            JSONObject contact = null;
            try {
                contact = jsonEvent.getJSONObject("contact");
            } catch (JSONException e) {

            }
            Map<String, String> contactMap = new HashMap<>();
            try {
                contactMap.put("name", String.valueOf(contact.get("name")));
            } catch (JSONException e) {

            }
            try {
                contactMap.put("email", String.valueOf(contact.get("email")));
            } catch (JSONException e) {

            }
            try {
                contactMap.put("phone", String.valueOf(contact.get("phone")));
            } catch (JSONException e) {

            }

            JSONArray categories = null;
            try {
                categories = jsonEvent.getJSONArray("categories");
            } catch (JSONException e) {

            }
            List<String> categoriesList = new ArrayList<>();
            try {
                for(int x = 0; x < categories.length(); x++) {
                    categoriesList.add(String.valueOf(categories.get(x)));
                }
            } catch (JSONException e) {

            }


            String link = null;
            try {
                link = jsonEvent.getString("link");
            } catch (JSONException e) {

            }
            String event_url = null;
            try {
                event_url = jsonEvent.getString("event_url");
            } catch (JSONException e) {

            }

            JSONArray submitted_by = null;
            try {
                submitted_by = jsonEvent.getJSONArray("submitted_by");
            } catch (JSONException e) {

            }
            List<String> submitted_byList = new ArrayList<>();
            try {
                for(int y = 0; y < submitted_by.length(); y++) {
                    submitted_byList.add(String.valueOf(categories.get(y)));
                }
            } catch (JSONException e) {

            }

            String webcast_url = null;
            try {
                webcast_url = jsonEvent.getString("webcast_url");
            } catch (JSONException e) {

            }
            String series_name = null;
            try {
                series_name = jsonEvent.getString("series_name");
            } catch (JSONException e) {

            }
            String presenter = null;
            try {
                presenter = jsonEvent.getString("presenter");
            } catch (JSONException e) {

            }
            String image = null;
            try {
                image = jsonEvent.getString("image");
            } catch (JSONException e) {

            }
            String image_alt_text = null;
            try {
                image_alt_text = jsonEvent.getString("image_alt_text");
            } catch (JSONException e) {

            }

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
