package com.abcCarPortal.service;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.TreeSet;
import java.util.stream.Collectors;
import static java.util.stream.Collectors.collectingAndThen;
import static java.util.stream.Collectors.toCollection;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcCarPortal.model.Car;
import com.abcCarPortal.model.CarBidding;
import com.abcCarPortal.model.User;
import com.abcCarPortal.repository.BidRepository;
import com.abcCarPortal.repository.CarRepository;



@Service
@Transactional
public class CarService {

	@Autowired
	private CarRepository carRepository;

	@Autowired
	private BidRepository bidRepository;
	

	public List<Car> getAllCars() {
		return carRepository.findAll();
	}

	public Car save(Car car) {
		return carRepository.save(car);
	}

	public Optional<Car> getCarInfo(long cid) {

		return carRepository.findById(cid);
	}
	
	public List<Car> findCarPosts(long uid){
		return carRepository.findBySellerId(uid);
	}
	
	public void deleteCar(long cid) {
		carRepository.deleteById(cid);
	}
	
//	public List<Car> search(String keyword) {
//		return carRepository.search(keyword);
//		
//	}

	public CarBidding saveBid(CarBidding bid) {

		return bidRepository.save(bid);
	}

	public List<CarBidding> getAllBids() {

		List<CarBidding> allBid = bidRepository.findAll();

		return allBid;
	}
	
	public List<CarBidding> findUserBid(User user, Car car) {
		return bidRepository.findByUserAndCar(user, car);
	}
	
	public Optional<CarBidding> getBidInfo(long bid){
		return bidRepository.findById(bid);
	}
	
	public List<CarBidding> getUserBids(User user){
		return bidRepository.findByUser(user);
	}
	
	public void deleteBid(long bid) {
		bidRepository.deleteById(bid);
	}
	
	public void deleteBidingByCarId(long carId) {
		bidRepository.deleteByCarId(carId);
	}

	public List<Car> search(String keyword) {
		
		return carRepository.search(keyword);
	}

}
