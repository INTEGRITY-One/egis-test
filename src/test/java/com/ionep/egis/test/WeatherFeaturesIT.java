package com.ionep.egis.test;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(
		features = "src/test/resources",
		glue = "src/test/java"//,
//		plugin = {"com.consol.citrus.cucumber.CitrusReporter"}
)
public class WeatherFeaturesIT {

}
