package com.bdmarket.serviceImp;


import com.bdmarket.dao.UpdateProfileshopDao;
import com.bdmarket.daoimp.updateProfileshopImp;
import com.bdmarket.model.UpdateProfile;
import com.bdmarket.service.UpdateProfileshopService;

public class UpdateProfileshopServiceImpl implements UpdateProfileshopService {

	UpdateProfileshopDao updatedao = new updateProfileshopImp();

	@Override
	public void add_Profile(UpdateProfile customer) {
		updatedao.add_Profile(customer);

	}

	@Override
	public void update_profileshop(UpdateProfile customer) {
		updatedao.update_profileshop(customer);
	}

	@Override
	public void delete_profileshop(String email) {
		updatedao.delete_profileshop(email);
	}

	@Override
	public boolean check_email(String eheck_email) {
		return updatedao.check_email(eheck_email);
	}

	@Override
	public String getshopkeeperLocation(String email) {
		return updatedao.getshopkeeperLocation(email);
	}

}
