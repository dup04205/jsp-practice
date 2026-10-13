package com.board;

public class BoardData {
    private String title;
    private String writer;
    private String text;
    private String pass;

    public void setTitle(String title) { this.title = title; }
    public void setWriter(String writer) { this.writer = writer; }
    public void setText(String text) { this.text = text; }
    public void setPass(String pass) { this.pass = pass; }

    public String getTitle() { return title; }
    public String getWriter() { return writer; }
    public String getText() { return text; }
    public String getPass() { return pass; }
}
