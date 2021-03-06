package gov.iti.jets.shoppy.service.interfaces;

import gov.iti.jets.shoppy.presentation.helpers.HomeViewHelper;
import gov.iti.jets.shoppy.presentation.helpers.ProfileViewHelper;
import gov.iti.jets.shoppy.service.dtos.AddressDto;
import gov.iti.jets.shoppy.service.dtos.CustomerDto;
import jakarta.persistence.EntityManager;

public interface ProfileService {
    ProfileViewHelper getUser(long id, EntityManager entityManager);
    boolean updateUser(int id , CustomerDto customerDto, AddressDto addressDto , EntityManager entityManager);
}
