/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import com.mysql.jdbc.Connection;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Viranchi
 */
public class DbManagerTest {
    
    public DbManagerTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of getConnection method, of class DbManager.
     */
    @Test
    public void testGetConnection() {
        System.out.println("getConnection");
        DbManager instance = new DbManager();
        Connection expResult = instance.getConnection();
        Connection result = instance.getConnection();
        assertEquals(expResult, result);
        
        // TODO review the generated test code and remove the default call to fail.
        //("The test case is a prototype.");
    }
    
}
