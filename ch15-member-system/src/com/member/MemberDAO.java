package com.member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class MemberDAO {
    private Connection getConnection() throws Exception {
        Class.forName("org.mariadb.jdbc.Driver");
        String url = "jdbc:mariadb://localhost:3306/my_db";
        String user = "user";
        String pw = "user1234";
        Connection con = DriverManager.getConnection(url, user, pw);
        return con;
    }

    public MemberDTO selectOne(String id) {
        MemberDTO mb = new MemberDTO();
        try (Connection con = getConnection();
             Statement stmt = con.createStatement();
             ResultSet rs = stmt.executeQuery(
                 String.format("select * from member2 where id='%s'", id))) {
            if (rs.next()) {
                mb.setId(rs.getString("id"));
                mb.setPass(rs.getString("pass"));
                mb.setName(rs.getString("name"));
                mb.setPhone(rs.getString("phone"));
                mb.setEmail(rs.getString("email"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mb;
    }

    public boolean updateOne(MemberDTO mb) {
        boolean res = false;
        int upd = 0;
        try (Connection con = getConnection();
             Statement stmt = con.createStatement()) {
            String sql = String.format(
                "update member2 set id='%s', pass='%s', name='%s', phone='%s', email='%s' where id='%s'",
                mb.getId(), mb.getPass(), mb.getName(), mb.getPhone(), mb.getEmail(), mb.getId());
            upd = stmt.executeUpdate(sql);
            res = (upd == 0) ? false : true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }

    public boolean deleteOne(String id) {
        boolean res = false;
        try (Connection con = getConnection();
             Statement stmt = con.createStatement()) {
            String sql = String.format("delete from member2 where id='%s'", id);
            res = (stmt.executeUpdate(sql) == 0) ? false : true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }

    public boolean insertOne(MemberDTO mb) {
        boolean res = false;
        try (Connection con = getConnection();
             Statement stmt = con.createStatement()) {
            String sql = String.format(
                "insert into member2 values('%s','%s','%s','%s','%s')",
                mb.getId(), mb.getPass(), mb.getName(), mb.getPhone(), mb.getEmail());
            res = (stmt.executeUpdate(sql) == 0) ? false : true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }

    public boolean isNotMember(String id, String pass) {
        boolean res = false;
        try (Connection con = getConnection();
             Statement stmt = con.createStatement();
             ResultSet rs = stmt.executeQuery(String.format(
                 "select * from member2 where id='%s' and pass='%s'", id, pass))) {
            if (rs.next()) res = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return !(res);
    }
}
