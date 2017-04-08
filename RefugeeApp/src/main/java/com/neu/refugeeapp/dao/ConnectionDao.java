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
import com.neu.refugeeapp.bean.User;

public class ConnectionDao {

	private static ConnectionDao connectionDao;
	private static final String QUERY = "SELECT * from flight where 	MONTH_OF_TRAVEL=? and DAY_OF_TRAVEL=? and MONTH_OF_PRICEFALL>=? and DAY_OF_PRICEFALL>=? and source like ? and destination like ? and ? > predictedPrice order by predictedPrice ASC LIMIT 1";
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

	/**
	 * Login Service
	 * 
	 * @param conn
	 * @param account
	 * @return
	 */
	public static String[] getQuery(String[] params) {
		String query[] = new String[3];

		if (Integer.parseInt(params[1]) <= 2) {
			if (params[2].equals("Solo")) {
				query[0] = "Select * from " + params[0]
						+ "_attraction  where ( subcategory like  '%Bar%' or subcategory like '%Club%' ) and rating=1 order by rating  LIMIT 5";
				query[1] = "Select * from " + params[0]
						+ "_attraction  where ( subcategory like  '%Bar%' or subcategory like '%Club%' ) and rating=2 order by rating  LIMIT 5";
				query[2] = "Select * from " + params[0]
						+ "_attraction  where ( subcategory like  '%Bar%' or subcategory like '%Club%' ) and rating=3 order by rating  LIMIT 5";
			} else if (params[2].equals("Family")) {
				query[0] = "Select * from " + params[0]
						+ "_attraction  where ( subcategory like  '%Garden%' or subcategory like '%Museum%' or subcategory like 'church' ) and rating=1 order by rating  LIMIT 5";
				query[1] = "Select * from " + params[0]
						+ "_attraction  where ( subcategory like  '%Garden%' or subcategory like '%Museum%' or subcategory like 'church' ) and rating=2 order by rating  LIMIT 5";
				query[2] = "Select * from " + params[0]
						+ "_attraction  where ( subcategory like  '%Garden%' or subcategory like '%Museum%' or subcategory like 'church' ) and rating=3 order by rating  LIMIT 5";
			} else if (params[2].equals("Friends")) {
				query[0] = "Select * from " + params[0]
						+ "_attraction  where ( subcategory like  '%College%' or subcategory like '%Museum%' or subcategory like 'Gym' ) and rating=1 order by rating  LIMIT 5";
				query[1] = "Select * from " + params[0]
						+ "_attraction  where ( subcategory like  '%College%' or subcategory like '%Museum%' or subcategory like 'Gym' ) and rating=2 order by rating  LIMIT 5";
				query[2] = "Select * from " + params[0]
						+ "_attraction  where ( subcategory like  '%College%' or subcategory like '%Museum%' or subcategory like 'Gym' ) and rating=3 order by rating  LIMIT 5";
			}
		} else if (Integer.parseInt(params[1]) > 2 && Integer.parseInt(params[1]) < 6) {
			if (params[2].equals("Solo")) {
				query[0] = "Select * from " + params[0]
						+ "_attraction  where ( subcategory like  '%Bar%' or subcategory like '%Club%' ) and rating=1 order by rating  LIMIT 10";
				query[1] = "Select * from " + params[0]
						+ "_attraction  where ( subcategory like  '%Bar%' or subcategory like '%Club%' ) and rating=2 order by rating  LIMIT 10";
				query[2] = "Select * from " + params[0]
						+ "_attraction  where ( subcategory like  '%Bar%' or subcategory like '%Club%' ) and rating=3 order by rating  LIMIT 10";
			} else if (params[2].equals("Family")) {
				query[0] = "Select * from " + params[0]
						+ "_attraction  where ( subcategory like  '%Garden%' or subcategory like '%Museum%' or subcategory like 'church' ) and rating=1 order by rating  LIMIT 10";
				query[1] = "Select * from " + params[0]
						+ "_attraction  where ( subcategory like  '%Garden%' or subcategory like '%Museum%' or subcategory like 'church' ) and rating=2 order by rating  LIMIT 10";
				query[2] = "Select * from " + params[0]
						+ "_attraction  where ( subcategory like  '%Garden%' or subcategory like '%Museum%' or subcategory like 'church' ) and rating=3 order by rating  LIMIT 10";
			} else if (params[2].equals("Friends")) {
				query[0] = "Select * from " + params[0]
						+ "_attraction  where ( subcategory like  '%College%' or subcategory like '%Museum%' or subcategory like 'Gym' ) and rating=1 order by rating  LIMIT 10";
				query[1] = "Select * from " + params[0]
						+ "_attraction  where ( subcategory like  '%College%' or subcategory like '%Museum%' or subcategory like 'Gym' ) and rating=2 order by rating  LIMIT 10";
				query[2] = "Select * from " + params[0]
						+ "_attraction  where ( subcategory like  '%College%' or subcategory like '%Museum%' or subcategory like 'Gym' ) and rating=3 order by rating  LIMIT 10";
			}
		} else {
			if (params[2].equals("Solo")) {
				query[0] = "Select * from " + params[0]
						+ "_attraction  where ( subcategory like  '%Bar%' or subcategory like '%Club%' ) and rating=1 order by rating  LIMIT 15";
				query[1] = "Select * from " + params[0]
						+ "_attraction  where ( subcategory like  '%Bar%' or subcategory like '%Club%' ) and rating=2 order by rating  LIMIT 15";
				query[2] = "Select * from " + params[0]
						+ "_attraction  where ( subcategory like  '%Bar%' or subcategory like '%Club%' ) and rating=3 order by rating  LIMIT 15";
			} else if (params[2].equals("Family")) {
				query[0] = "Select * from " + params[0]
						+ "_attraction  where ( subcategory like  '%Garden%' or subcategory like '%Museum%' or subcategory like 'church' ) and rating=1 order by rating  LIMIT 15";
				query[1] = "Select * from " + params[0]
						+ "_attraction  where ( subcategory like  '%Garden%' or subcategory like '%Museum%' or subcategory like 'church' ) and rating=2 order by rating  LIMIT 15";
				query[2] = "Select * from " + params[0]
						+ "_attraction  where ( subcategory like  '%Garden%' or subcategory like '%Museum%' or subcategory like 'church' ) and rating=3 order by rating  LIMIT 15";
			} else if (params[2].equals("Friends")) {
				query[0] = "Select * from " + params[0]
						+ "_attraction  where ( subcategory like  '%College%' or subcategory like '%Museum%' or subcategory like 'Gym' ) and rating=1 order by rating  LIMIT 15";
				query[1] = "Select * from " + params[0]
						+ "_attraction  where ( subcategory like  '%College%' or subcategory like '%Museum%' or subcategory like 'Gym' ) and rating=2 order by rating  LIMIT 15";
				query[2] = "Select * from " + params[0]
						+ "_attraction  where ( subcategory like  '%College%' or subcategory like '%Museum%' or subcategory like 'Gym' ) and rating=3 order by rating  LIMIT 15";
			}
		}

		return query;
	}

	public static Map<Integer, List<TravelPlan>> getTravelPlan(Connection conn, String[] params) {

		Map map = new HashMap<Integer, List<TravelPlan>>();
		Random rand = new Random();

		String[] query = getQuery(params);

		ResultSet rs = null;
		ResultSet rs1 = null;
		ResultSet rs2 = null;
		List<TravelPlan> travelPlans = new ArrayList<TravelPlan>();
		List<TravelPlan> travelPlans1 = new ArrayList<TravelPlan>();
		List<TravelPlan> travelPlans2 = new ArrayList<TravelPlan>();

		try {
			PreparedStatement pstmt = conn.prepareStatement(query[0]);
			PreparedStatement pstmt1 = conn.prepareStatement(query[1]);
			PreparedStatement pstmt2 = conn.prepareStatement(query[2]);
			rs = pstmt.executeQuery();
			rs1 = pstmt1.executeQuery();
			rs2 = pstmt2.executeQuery();
			int ind = 0;
			if (rs != null) {
				while (rs.next()) {
					TravelPlan travelPlan = new TravelPlan();

					travelPlan.setName(rs.getString("name"));
					travelPlan.setLat(rs.getDouble("lat"));
					travelPlan.setLng(rs.getDouble("lng"));
					travelPlan.setRating(rs.getInt("rating"));
					travelPlan.setAddress(rs.getString("address"));
					travelPlans.add(travelPlan);
				}
				map.put(ind++, travelPlans);
			}
			if (rs1 != null) {
				while (rs1.next()) {
					TravelPlan travelPlan = new TravelPlan();

					travelPlan.setName(rs1.getString("name"));
					travelPlan.setLat(rs1.getDouble("lat"));
					travelPlan.setLng(rs1.getDouble("lng"));
					travelPlan.setRating(rs1.getInt("rating"));
					travelPlan.setAddress(rs1.getString("address"));
					travelPlans1.add(travelPlan);
				}
				map.put(ind++, travelPlans1);
			}
			if (rs2 != null) {
				while (rs2.next()) {
					TravelPlan travelPlan = new TravelPlan();

					travelPlan.setName(rs2.getString("name"));
					travelPlan.setLat(rs2.getDouble("lat"));
					travelPlan.setLng(rs2.getDouble("lng"));
					travelPlan.setRating(rs2.getInt("rating"));
					travelPlan.setAddress(rs2.getString("address"));
					travelPlans2.add(travelPlan);
				}
				map.put(ind++, travelPlans2);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return map;
	}

	public static User getUser(Connection conn, long id){
		
		User user = null;
		try {
			String query = "select * from user where personID=?";
			PreparedStatement pstmt = conn.prepareStatement(query);
			
			pstmt.setLong(1, id);
			ResultSet resultSet = pstmt.executeQuery();
			if (resultSet.next()) {
				user = new User();
				user.setPersonID(id);
				user.setEmail(resultSet.getString("email"));
				user.setFirstName(resultSet.getString("firstName"));
				user.setLastName(resultSet.getString("lastName"));
				user.setPassword(resultSet.getString("password"));
				user.setProfilePictureURI(resultSet.getString("profile_picture"));
				user.setUsername(resultSet.getString("username"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}
	
	public User create(Connection conn,long personID, String username, String emailId, String firstName, String lastName,
			String profilePictureURI,String name)  {
		User user = new User();
		try {
			System.out.println("inside DAO");
			user.setPersonID(personID);
			user.setFirstName(firstName);
			user.setLastName(lastName);
			user.setName(username);
			user.setEmail(emailId);
			user.setProfilePictureURI(profilePictureURI);
			user.setName(name);
			/* email.setUser(user); */
			try {
				String query = "insert into user(personID,email,firstName,lastName,name,profile_picture,username) values(?,?,?,?,?,?,?)";
				PreparedStatement pstmt = conn.prepareStatement(query);
				
				pstmt.setLong(1, personID);
				pstmt.setString(2, emailId);
				pstmt.setString(3, firstName);
				pstmt.setString(4, lastName);
				pstmt.setString(5, name);
				pstmt.setString(6, profilePictureURI);
				pstmt.setString(7, username);
				
				int output = pstmt.executeUpdate();
				if (output==0) {
					return null;
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return user;
		} catch (Exception e) {
			
		}
		return user;
	}
	
	public static void main(String[] args) {
		getConnection();
	}
}
