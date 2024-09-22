# Project Name: Travel Tourist (Hibernate project)

Database: SQL (Online Clever Cloud)
1. Project Setup:
   - Create a dynamic web project using Eclipse IDE
   - Convert the project to Maven
   - Open pom.xml and add the following dependencies:

```xml
   <dependencies>
       <!-- Hibernate Core -->
       <dependency>
           <groupId>org.hibernate.orm</groupId>
           <artifactId>hibernate-core</artifactId>
           <version>6.4.1.Final</version>
       </dependency>
       <!-- MySQL Connector -->
       <dependency>
           <groupId>com.mysql</groupId>
           <artifactId>mysql-connector-j</artifactId>
           <version>8.2.0</version>
       </dependency>
   </dependencies>
```

2. Hibernate Configuration:
   - Create a new XML file named hibernate.cfg.xml in src/main/java
   - Add the following configuration:

   ```xml
   <!DOCTYPE hibernate-configuration PUBLIC
   "-//Hibernate/Hibernate Configuration DTD 3.0//EN"
   "http://www.hibernate.org/dtd/hibernate-configuration-3.0.dtd">
   <hibernate-configuration>
     <session-factory>
       <!-- JDBC Database connection settings -->
       <property name="dialect">org.hibernate.dialect.MySQLDialect</property>
       <property name="connection.driver_class">com.mysql.cj.jdbc.Driver</property>
       <property name="connection.url">your connection url</property>
       <property name="connection.username">your username</property>
       <property name="connection.password">your password</property>
       <property name="show_sql">true</property>
       <property name="current_session_context_class">thread</property>
       <property name="hbm2ddl.auto">none</property>
     </session-factory>
   </hibernate-configuration>
   ```

3. Entity Class:
   Create a TouristLocations class with appropriate annotations:

   ```java
   import javax.persistence.*;

   @Entity
   @Table(name = "tourist_locations")
   public class TouristLocations {
       @Id
       @GeneratedValue(strategy = GenerationType.IDENTITY)
       private int locationid;
       private String locationname;
       private String city;
       private String country;
       private String description;
       private float averagerating;

       // Getters and setters
   }
   ```

4. CRUD Operations:

   a. Insert Operation:
   ```java
   try {
       String locationname = request.getParameter("locationname");
       String city = request.getParameter("city");
       String country = request.getParameter("country");
       String description = request.getParameter("description");
       float averagerate = Float.parseFloat(request.getParameter("averagerate"));

       TouristLocations t = new TouristLocations();
       t.setLocationname(locationname);
       t.setCity(city);
       t.setCountry(country);
       t.setDescription(description);
       t.setAveragerating(averagerate);

       Configuration cfg = new Configuration().configure();
       SessionFactory sf = cfg.addAnnotatedClass(TouristLocations.class).buildSessionFactory();
       Session ses = sf.getCurrentSession();
       ses.beginTransaction();

       ses.persist(t);
       ses.getTransaction().commit();
       ses.close();
   } catch (Exception e) {
       // Handle exceptions
   }
   ```

   b. Select Operation:
   ```java
   Configuration cfg = new Configuration().configure();
   SessionFactory sf = cfg.addAnnotatedClass(TouristLocations.class).buildSessionFactory();
   Session ses = sf.getCurrentSession();
   ses.beginTransaction();

   Query<TouristLocations> q = ses.createQuery("from TouristLocations", TouristLocations.class);
   List<TouristLocations> list = q.getResultList();

   for (TouristLocations t : list) {
       // Display or process each tourist location
   }

   ses.close();
   ```

   c. Search by ID:
   ```java
   int id = Integer.parseInt(request.getParameter("id"));

   Configuration cfg = new Configuration().configure();
   SessionFactory sf = cfg.addAnnotatedClass(TouristLocations.class).buildSessionFactory();
   Session ses = sf.getCurrentSession();
   ses.beginTransaction();

   Query<TouristLocations> q = ses.createQuery("from TouristLocations where locationid = :p1", TouristLocations.class);
   q.setParameter("p1", id);
   List<TouristLocations> list = q.getResultList();

   if (!list.isEmpty()) {
       TouristLocations t = list.get(0);
       // Display or process the found tourist location
   } else {
       // Handle case when no location is found
   }

   ses.close();
   ```

   d. Update Operation:
   ```java
   try {
       int id = Integer.parseInt(request.getParameter("id"));
       String locationname = request.getParameter("locationname");
       String city = request.getParameter("city");
       String country = request.getParameter("country");
       String description = request.getParameter("description");
       float averagerating = Float.parseFloat(request.getParameter("averagerating"));

       Configuration cfg = new Configuration().configure();
       SessionFactory sf = cfg.addAnnotatedClass(TouristLocations.class).buildSessionFactory();
       Session ses = sf.getCurrentSession();
       ses.beginTransaction();

       Query<TouristLocations> q = ses.createQuery("update TouristLocations set locationname = :p1, city = :p2, country = :p3, description = :p4, averagerating = :p5 where locationid = :p6");
       q.setParameter("p1", locationname);
       q.setParameter("p2", city);
       q.setParameter("p3", country);
       q.setParameter("p4", description);
       q.setParameter("p5", averagerating);
       q.setParameter("p6", id);

       int cnt = q.executeUpdate();
       ses.getTransaction().commit();

       if (cnt > 0) {
           // Update successful
       } else {
           // Update failed
       }

       ses.close();
   } catch (Exception e) {
       // Handle exceptions
   }
   ```

   e. Delete Operation:
   ```java
   int id = Integer.parseInt(request.getParameter("id"));

   Configuration cfg = new Configuration().configure();
   SessionFactory sf = cfg.addAnnotatedClass(TouristLocations.class).buildSessionFactory();
   Session ses = sf.getCurrentSession();
   ses.beginTransaction();

   Query<TouristLocations> q = ses.createQuery("delete from TouristLocations where locationid = :p1");
   q.setParameter("p1", id);

   int cnt = q.executeUpdate();
   ses.getTransaction().commit();

   if (cnt > 0) {
       // Deletion successful
   } else {
       // Deletion failed
   }

   ses.close();
   ```
   **Here the Overview of Project**
![interface](https://github.com/user-attachments/assets/3478f5c0-8751-433f-908b-bb901d456442)
![insert form](https://github.com/user-attachments/assets/9f53ce6e-7336-4cc5-98f9-70a17c65311e)
![insert](https://github.com/user-attachments/assets/f4fb221f-dd08-427b-910f-7849d5e8be2a)
![select](https://github.com/user-attachments/assets/8346b0d2-084e-4574-85df-c94ddd5b9aa1)
![search](https://github.com/user-attachments/assets/52dbed09-89c3-4d51-b619-10571735a85d)
![update](https://github.com/user-attachments/assets/3d21d753-5493-4d3c-be57-a96e475beb1a)
![delete](https://github.com/user-attachments/assets/1352bbde-190a-4149-815b-25941f56c6ff)
