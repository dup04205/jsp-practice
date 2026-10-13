package com.member.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class MemberDAO {
    private Connection getConnection() throws Exception {
        Class.forName("org.mariadb.jdbc.Driver");
        String url = "jdbc:mariadb://localhost:3306/my_db";
        String user = "user";
        String pw = "user1234";
        Connection con = DriverManager.getConnection(url, user, pw);
        return con;
    }

    public ArrayList<MemberDTO> selectAll() {
        ArrayList<MemberDTO> memberList = new ArrayList<MemberDTO>();
        try (Connection con = getConnection();
             Statement stmt = con.createStatement();
             ResultSet rs = stmt.executeQuery("select * from member")) {
            while (rs.next()) {
                MemberDTO member = new MemberDTO();
                member.setId(rs.getInt("id"));
                member.setPass(rs.getString("pass"));
                member.setName(rs.getString("name"));
                member.setPhone(rs.getString("phone"));
                member.setAddress(rs.getString("address"));
                memberList.add(member);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return memberList;
    }

    public MemberDTO selectOne(int id) {
        MemberDTO mb = new MemberDTO();
        try (Connection con = getConnection();
             Statement stmt = con.createStatement();
             ResultSet rs = stmt.executeQuery(
                 String.format("select * from member where id=%s", id))) {
            rs.next();
            mb.setId(rs.getInt("id"));
            mb.setPass(rs.getString("pass"));
            mb.setName(rs.getString("name"));
            mb.setPhone(rs.getString("phone"));
            mb.setAddress(rs.getString("address"));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mb;
    }

    public void updateOne(MemberDTO mb) {
        try (Connection con = getConnection();
             Statement stmt = con.createStatement()) {
            String sql = String.format(
                "update member set id=%s, pass='%s', name='%s', phone='%s', address='%s' where id=%s",
                mb.getId(), mb.getPass(), mb.getName(), mb.getPhone(), mb.getAddress(), mb.getId());
            stmt.executeUpdate(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteOne(int id) {
        try (Connection con = getConnection();
             Statement stmt = con.createStatement()) {
            String sql = String.format("delete from member where id=%s", id);
            stmt.executeUpdate(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void insertOne(MemberDTO mb) {
        try (Connection con = getConnection();
             Statement stmt = con.createStatement()) {
            String sql = String.format(
                "insert into member values(%s,'%s','%s','%s','%s')",
                mb.getId(), mb.getPass(), mb.getName(), mb.getPhone(), mb.getAddress());
            stmt.executeUpdate(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
