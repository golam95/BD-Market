package com.bdmarket.service;

import com.bdmarket.model.UpdateProfile;

public interface UpdateProfileshopService {

	public void add_Profile(UpdateProfile customer);

	public void update_profileshop(UpdateProfile customer);

	public void delete_profileshop(String email);
	
	public boolean check_email(String eheck_email);
	
	public String getshopkeeperLocation(String email);
	
}
