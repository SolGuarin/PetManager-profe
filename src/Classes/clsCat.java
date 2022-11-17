/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Classes;

/**
 *
 * @author USUARIO
 */
public class clsCat extends clsPet {
    private int catId;
    private String breed;

    
   public clsCat(int catId, String breed, int petId, String code, String name, int born_year, String color, String health_status) {
        super(petId, code, name, born_year, color, health_status);
        this.catId = catId;
        this.breed = breed;        
    }
   
   public clsCat(int petId, int catId) {
        super(petId, null, null, 0, null, null);
        this.catId = catId;
    }


    
    
    /**
     * @return the catId
     */
    public int getCatId() {
        return catId;
    }

    /**
     * @param catId the catId to set
     */
    public void setCatId(int catId) {
        this.catId = catId;
    }

    /**
     * @return the breed
     */
    public String getBreed() {
        return breed;
    }

    /**
     * @param breed the breed to set
     */
    public void setBreed(String breed) {
        this.breed = breed;
    }
    
    public void SelfCleaning(){
        System.out.println("El gato " + super.getName() + " se está limpiando.");
    }

    @Override
    public void Sound(){
        System.out.println("El gato " + super.getName() +" hace miaaauuu");
    }
    
    @Override
    public int getNumberOfBones(){
        return 230;
    }
    
    @Override
    public String getAnimalType(){
        return "Cat";
    }
}