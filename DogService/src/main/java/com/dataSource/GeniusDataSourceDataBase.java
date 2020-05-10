package com.dataSource;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import com.model.Dog;

public class GeniusDataSourceDataBase {
	List<Dog> dogCollection = new ArrayList<Dog>();

	public GeniusDataSourceDataBase() {
		Dog a = new Dog("Terrier", 200, "Dog A", 4, "type 1", 10, "a", false);
		Dog b = new Dog("Terrier", 250, "Dog A", 4, "type 1", 10, "a", false);
		Dog c = new Dog("Terrier", 270, "Dog A", 4, "type 1", 10, "a", false);
		Dog d = new Dog("Husky", 200, "Dog T", 3, "type 2", 12, "d", true);
		Dog e = new Dog("Husky", 600, "Dog G", 3, "type 2", 16, "c", false);
		Dog f = new Dog("Husky", 500, "Dog T", 3, "type 2", 15, "f", false);
		Dog g = new Dog("Chihuahua", 2000, "Dog U", 3, "type 2", 10, "g", false);
		Dog h = new Dog("Chihuahua", 1500, "Dog Y", 2, "type 2", 10, "g", false);
		Dog i = new Dog("Chihuahua", 1600, "Dog K", 1, "type 2", 10, "g", false);
		Dog j = new Dog("Retriever", 800, "Dog T", 3, "type 2", 12, "d", true);
		Dog k = new Dog("Retriever", 600, "Dog G", 3, "type 2", 16, "c", false);
		Dog l = new Dog("Retriever", 500, "Dog T", 3, "type 2", 15, "f", false);
		Dog m = new Dog("Bulldog", 2000, "Dog B", 1, "type 2", 10, "g", false);
		Dog n = new Dog("Bulldog", 1500, "Dog B", 1, "type 2", 10, "g", false);
		Dog o = new Dog("Bulldog", 1600, "Dog B", 1, "type 2", 10, "g", false);
		dogCollection = Stream.of(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o).collect(Collectors.toList());
	}

	public List<Dog> getDogCollection() {
		return dogCollection;
	}

}
