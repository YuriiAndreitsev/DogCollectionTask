package com.service;

import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;

import com.comparators.Comparators;
import com.model.Dog;

public class UniquenessParametersMap {
Map <String, Comparator<Dog>> map = new HashMap<String, Comparator<Dog>>();

public UniquenessParametersMap() {
	map.put("name", Comparators.NAME);
	map.put("age", Comparators.AGE);
	map.put("color", Comparators.COLOR);
	map.put("type", Comparators.TYPE);
	map.put("tail", Comparators.TAIL);
	map.put("flea", Comparators.FLEA);
}

public Map<String, Comparator<Dog>> getMap() {
	return map;
}


}
