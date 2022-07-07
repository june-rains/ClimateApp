package com.duke.webapp.Dao;

import java.util.List;
import java.util.Map;

public class Event {
    String id;
    String start_timestamp;
    String end_timestamp;
    String summary;
    String description;
    String status;
    String sponsor;
    List<String> co_sponsors;
    Map<String, String> location;
    Map<String, String> contact;
    List<String> categories;
    String link;
    String event_url;
    List<String> submitted_by;
    String webcast_url;
    String series_name;
    String presenter;
    String image;
    String image_alt_text;
    Map<String, String> usersRecord;
    List<String> feedBack;
    Map<String, List<String>> feedBackAns;


    public Event() {
    }

    public Event(String id, String start_timestamp, String end_timestamp, String summary, String description, String status, String sponsor, List<String> co_sponsors, Map<String, String> location, Map<String, String> contact, List<String> categories, String link, String event_url, List<String> submitted_by, String webcast_url, String series_name, String presenter, String image, String image_alt_text, Map<String, String> usersRecord, List<String> feedBack, Map<String, List<String>> feedBackAns) {
        this.id = id;
        this.start_timestamp = start_timestamp;
        this.end_timestamp = end_timestamp;
        this.summary = summary;
        this.description = description;
        this.status = status;
        this.sponsor = sponsor;
        this.co_sponsors = co_sponsors;
        this.location = location;
        this.contact = contact;
        this.categories = categories;
        this.link = link;
        this.event_url = event_url;
        this.submitted_by = submitted_by;
        this.webcast_url = webcast_url;
        this.series_name = series_name;
        this.presenter = presenter;
        this.image = image;
        this.image_alt_text = image_alt_text;
        this.usersRecord = usersRecord;
        this.feedBack = feedBack;
        this.feedBackAns = feedBackAns;
    }



}
