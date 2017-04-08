package com.neu.refugeeapp.dao;

/**
 * Class Name - Connection DAO 
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Map.Entry;

import com.neu.refugeeapp.bean.TravelPlan;
import com.neu.refugeeapp.bean.LegalDocument;

public class ConnectionDao {

	private static ConnectionDao connectionDao;
	private static final String QUERY = "SELECT * FROM refugeedb.`uci-news-aggregator` where ID BETWEEN ? and ?";
	private static final String AMSTERDAM_ATTRACTION_QUERY = "Select * from amsterdam_attraction order by rating LIMIT 10";

	// Select * from amsterdam_poi;";
	private ConnectionDao() {

	}

	public static ConnectionDao getConnectionDao() {
		if (connectionDao == null)
			connectionDao = new ConnectionDao();
		return connectionDao;
	}

	/**
	 * method - gets Connection
	 * 
	 * @param void
	 * @return Connection
	 */
	public static Connection getConnection() {
		Connection connection = null;
		// STEP 2: Register JDBC driver
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// STEP 3: Open a connection
		System.out.println("Connecting to database...");
		try {
			connection = DriverManager.getConnection(ProjectConstants.DB_URL, ProjectConstants.DB_USER,
					ProjectConstants.DB_PASS);
			System.out.println("Success!!!");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}

	
	public static List<LegalDocument> getDocs(Connection conn, long min,long max){
		
		List<LegalDocument> docs = new ArrayList<LegalDocument>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(QUERY);
			
			pstmt.setLong(1, min);
			pstmt.setLong(2, max);
			
			ResultSet resultSet = pstmt.executeQuery();
			while (resultSet.next()) {
				LegalDocument doc = new LegalDocument();
				doc.setID(resultSet.getLong("ID"));
				doc.setTitle(resultSet.getString("TITLE"));
				doc.setUrl(resultSet.getString("URL"));
				doc.setPublisher(resultSet.getString("PUBLISHER"));
				docs.add(doc);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return docs;
	}
	
	
	
	public static void main(String[] args) {
		getConnection();
	}
}
