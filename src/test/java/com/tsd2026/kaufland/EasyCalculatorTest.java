package com.tsd2026.kaufland;

import junit.framework.TestCase;

public class EasyCalculatorTest extends TestCase {

    public void testCount() {
        EasyCalculator calculator = new EasyCalculator();
        int result = calculator.count(1,2);
        assertEquals( 3, result );
    }
}