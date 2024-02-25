CREATE TABLE Organization (
    OrganizationID INT AUTO_INCREMENT PRIMARY KEY,
    OrganizationName VARCHAR(255) NOT NULL,
    OrganizationEmail VARCHAR(255),
    OrganizationPhoneNumber VARCHAR(20),
    ContactName VARCHAR(255),
    ContactEmail VARCHAR(255),
    ContactPhoneNumber VARCHAR(20)
);
CREATE TABLE Facilities (
    FacilityID INT AUTO_INCREMENT PRIMARY KEY,
    OrganizationID INT,
    FacilityName VARCHAR(255) NOT NULL,
    FacilityAddress VARCHAR(255),
    FacilityEmail VARCHAR(255),
    FacilityPhoneNumber VARCHAR(20),
    FacilityPrice DECIMAL(10,2),
    ContactName VARCHAR(255),
    ContactEmail VARCHAR(255),
    ContactPhoneNumber VARCHAR(20),
    FOREIGN KEY (OrganizationID) REFERENCES Organization(OrganizationID)
);
CREATE TABLE Leagues (
    LeagueID INT AUTO_INCREMENT PRIMARY KEY,
    OrganizationID INT,
    LeagueName VARCHAR(255) NOT NULL,
    ContactName VARCHAR(255),
    ContactEmail VARCHAR(255),
    ContactPhoneNumber VARCHAR(20),
    FOREIGN KEY (OrganizationID) REFERENCES Organization(OrganizationID)
);
CREATE TABLE Teams (
    TeamID INT AUTO_INCREMENT PRIMARY KEY,
    LeagueID INT,
    TeamName VARCHAR(255) NOT NULL,
    CaptainName VARCHAR(255),
    CaptainEmail VARCHAR(255),
    CaptainPhoneNumber VARCHAR(20),
    FOREIGN KEY (LeagueID) REFERENCES Leagues(LeagueID)
);
CREATE TABLE Players (
    PlayerID INT AUTO_INCREMENT PRIMARY KEY,
    TeamID INT,
    Skill VARCHAR(255),
    Position ENUM('LW', 'RW', 'G', 'C', 'D'),
    TShirtSize VARCHAR(10),
    Email VARCHAR(255),
    PhoneNumber VARCHAR(20),
    BeerRotation BOOLEAN,
    Captain BOOLEAN,
    Paid BOOLEAN,
    FOREIGN KEY (TeamID) REFERENCES Teams(TeamID)
);

