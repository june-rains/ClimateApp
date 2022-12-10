package com.duke.webapp.Dao;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import java.util.List;
import java.util.Map;


@JsonIgnoreProperties
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

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getStart_timestamp() {
        return start_timestamp;
    }

    public void setStart_timestamp(String start_timestamp) {
        this.start_timestamp = start_timestamp;
    }

    public String getEnd_timestamp() {
        return end_timestamp;
    }

    public void setEnd_timestamp(String end_timestamp) {
        this.end_timestamp = end_timestamp;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getSponsor() {
        return sponsor;
    }

    public void setSponsor(String sponsor) {
        this.sponsor = sponsor;
    }

    public List<String> getCo_sponsors() {
        return co_sponsors;
    }

    public void setCo_sponsors(List<String> co_sponsors) {
        this.co_sponsors = co_sponsors;
    }

    public Map<String, String> getLocation() {
        return location;
    }

    public void setLocation(Map<String, String> location) {
        this.location = location;
    }

    public Map<String, String> getContact() {
        return contact;
    }

    public void setContact(Map<String, String> contact) {
        this.contact = contact;
    }

    public List<String> getCategories() {
        return categories;
    }

    public void setCategories(List<String> categories) {
        this.categories = categories;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getEvent_url() {
        return event_url;
    }

    public void setEvent_url(String event_url) {
        this.event_url = event_url;
    }

    public List<String> getSubmitted_by() {
        return submitted_by;
    }

    public void setSubmitted_by(List<String> submitted_by) {
        this.submitted_by = submitted_by;
    }

    public String getWebcast_url() {
        return webcast_url;
    }

    public void setWebcast_url(String webcast_url) {
        this.webcast_url = webcast_url;
    }

    public String getSeries_name() {
        return series_name;
    }

    public void setSeries_name(String series_name) {
        this.series_name = series_name;
    }

    public String getPresenter() {
        return presenter;
    }

    public void setPresenter(String presenter) {
        this.presenter = presenter;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getImage_alt_text() {
        return image_alt_text;
    }

    public void setImage_alt_text(String image_alt_text) {
        this.image_alt_text = image_alt_text;
    }

    public Map<String, String> getUsersRecord() {
        return usersRecord;
    }

    public void setUsersRecord(Map<String, String> usersRecord) {
        this.usersRecord = usersRecord;
    }

    public List<String> getFeedBack() {
        return feedBack;
    }

    public void setFeedBack(List<String> feedBack) {
        this.feedBack = feedBack;
    }

    public Map<String, List<String>> getFeedBackAns() {
        return feedBackAns;
    }

    public void setFeedBackAns(Map<String, List<String>> feedBackAns) {
        this.feedBackAns = feedBackAns;
    }
}
