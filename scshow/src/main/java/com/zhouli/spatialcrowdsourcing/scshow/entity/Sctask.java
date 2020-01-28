package com.zhouli.spatialcrowdsourcing.scshow.entity;

import java.io.Serializable;
import java.math.BigDecimal;

public class Sctask implements Serializable {
    private String sc_push_pusher_id;
    private String sc_push_theme;
    private BigDecimal sc_push_location_latitude;
    private BigDecimal sc_push_location_longitude;
    private String sc_push_content;
    private String sc_push_professional;
    private String sc_push_finish;
    private String sc_push_timelimit;
    private String sc_push_bounty;

    public String getSc_push_pusher_id() {
        return sc_push_pusher_id;
    }

    public void setSc_push_pusher_id(String sc_push_pusher_id) {
        this.sc_push_pusher_id = sc_push_pusher_id;
    }

    public String getSc_push_theme() {
        return sc_push_theme;
    }

    public void setSc_push_theme(String sc_push_theme) {
        this.sc_push_theme = sc_push_theme;
    }

    public BigDecimal getSc_push_location_latitude() {
        return sc_push_location_latitude;
    }

    public void setSc_push_location_latitude(BigDecimal sc_push_location_latitude) {
        this.sc_push_location_latitude = sc_push_location_latitude;
    }

    public BigDecimal getSc_push_location_longitude() {
        return sc_push_location_longitude;
    }

    public void setSc_push_location_longitude(BigDecimal sc_push_location_longitude) {
        this.sc_push_location_longitude = sc_push_location_longitude;
    }

    public String getSc_push_content() {
        return sc_push_content;
    }

    public void setSc_push_content(String sc_push_content) {
        this.sc_push_content = sc_push_content;
    }

    public String getSc_push_professional() {
        return sc_push_professional;
    }

    public void setSc_push_professional(String sc_push_professional) {
        this.sc_push_professional = sc_push_professional;
    }

    public String getSc_push_finish() {
        return sc_push_finish;
    }

    public void setSc_push_finish(String sc_push_finish) {
        this.sc_push_finish = sc_push_finish;
    }


    public String getSc_push_timelimit() {
        return sc_push_timelimit;
    }

    public void setSc_push_timelimit(String sc_push_timelimit) {
        this.sc_push_timelimit = sc_push_timelimit;
    }

    public String getSc_push_bounty() {
        return sc_push_bounty;
    }

    public void setSc_push_bounty(String sc_push_bounty) {
        this.sc_push_bounty = sc_push_bounty;
    }

    @Override
    public String toString() {
        return "Sctask{" +
                "sc_push_pusher_id='" + sc_push_pusher_id + '\'' +
                ", sc_push_theme='" + sc_push_theme + '\'' +
                ", sc_push_location_latitude=" + sc_push_location_latitude +
                ", sc_push_location_longitude=" + sc_push_location_longitude +
                ", sc_push_content='" + sc_push_content + '\'' +
                ", sc_push_professional='" + sc_push_professional + '\'' +
                ", sc_push_finish='" + sc_push_finish + '\'' +
                '}';
    }
}
