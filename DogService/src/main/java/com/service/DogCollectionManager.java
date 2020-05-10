package com.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.TreeSet;

import com.comparators.Comparators;
import com.model.Dog;

public class DogCollectionManager {
	public void getExtractedDogCollection(List<Dog> dogCollection, String[] breedToUniquelize, String[] uniqueness,
			String priority) {

		Collection<String> breedToUniquelizeCollection = new ArrayList<String>();
		if (breedToUniquelize.length > 0 && breedToUniquelize != null) {
			for (String breedName : breedToUniquelize) {
				breedToUniquelizeCollection.add(breedName);
			}

		}
		List<Comparator<Dog>> priorityComparatorList = new ArrayList<>();
		UniquenessParametersMap uniquenessComparatorMap = new UniquenessParametersMap();

		if (priority.equals("breed")) {
			priorityComparatorList.add(Comparators.BREED);
			priorityComparatorList.add(Comparators.PRICE);
		} else {
			priorityComparatorList.add(Comparators.PRICE);
			priorityComparatorList.add(Comparators.BREED);
		}

		PriorityComparator priorityComparator = new PriorityComparator(priorityComparatorList);

		Collection<Comparator<Dog>> dogUniquenessComparators = new ArrayList<Comparator<Dog>>();

		if (uniqueness.length > 0 && uniqueness != null) {
			for (String uniquenessParam : uniqueness) {
				dogUniquenessComparators.add(uniquenessComparatorMap.getMap().get(uniquenessParam));
			}
		}

		Collection<Dog> toBeRemovedFromInitialDogCollection = new ArrayList<Dog>();

		UniquenessComparatorChain chainUniqueness = new UniquenessComparatorChain();
		Comparator<Dog> finalUniquenessComparator = chainUniqueness.createChainComparator(dogUniquenessComparators);
		Collection<Dog> uniqueDogCollection = new TreeSet<Dog>(finalUniquenessComparator);
		if (breedToUniquelizeCollection.size() > 0) {
			breedToUniquelizeCollection.stream().forEach(breed -> {
				dogCollection.stream().filter(dog -> dog.getBreed().equals(breed))
						.forEach(dog -> uniqueDogCollection.add(dog));
				dogCollection.stream().filter(dog -> dog.getBreed().equals(breed))
						.forEach(dog -> toBeRemovedFromInitialDogCollection.add(dog));
			});

			dogCollection.removeAll(toBeRemovedFromInitialDogCollection);
			dogCollection.addAll(uniqueDogCollection);
		}

		Collections.sort(dogCollection, priorityComparator);

//		return dogCollection;
	}
}
