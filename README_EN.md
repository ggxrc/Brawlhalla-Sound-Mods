# Brawlhalla Sound Mods

This repository contains tools and resources to modify sounds in Brawlhalla. The project allows you to extract, edit, and replace sound effects in the game, customizing the audio experience during matches. More audio files may be added in the future as the project evolves.

## Repository Structure

### 📁 Audacity Sounds
Contains audio files that I edited in Audacity, organized by weapon category. This folder serves as an **organizational example** to help you understand how to structure your own files:

- **desarmado/** - Sounds for unarmed attacks
- **foice/** - Sounds for the scythe weapon
- **lança/** - Sounds for the spear weapon
- **luva/** - Sounds for gauntlets
- **marreta/** - Sounds for the hammer weapon
- **ui/** - Sounds for the user interface
- more folders and audio files will be added over time

The numbering of files (e.g., `04.wav`, `07.wav`) corresponds to the exact name of the sound file to be replaced in the `.bnk` files of the game. The IDs are only to help find these sounds. **Important:** This folder is for reference only, and you don't need to put your audio files here - you should create and maintain your audio files on your own computer.

### 📁 Modified Soundbanks
Stores `.bnk` files that have already been modified and are ready to use in the game:

- `SPC_Sentai.bnk` - Soundbank for Red Raptor
- `WEP_Fists.bnk` - Soundbank for gauntlets
- `WEP_Hammer.bnk` - Soundbank for hammer
- `WEP_Scythe.bnk` - Soundbank for scythe
- `WEP_Spear.bnk` - Soundbank for spear
- `WEP_Unarmed.bnk` - Soundbank for unarmed attacks and throwables

### 📁 sfx and memes
This folder contains a collection of sound effects and memes that were used to create audio modifications:

- **UI/** - Sound effects for the user interface, including KO sounds
- **Unarmed/** - Meme sounds for unarmed attacks
- **Weapons/** - Sounds organized by weapon type (Fists, Hammer, Scythe, Spear)

**If you want to contribute new sound effects or memes to the repository, this is the right folder to submit your contributions!** These files serve as resources for everyone to create their own modifications.

### 📁 Sounds ID
Contains information about sound IDs used in the game:

- `SoundbanksInfo.xml` - XML containing all audio IDs in the game
- `impacts brawl weapons.txt` - Organized list of impact IDs for each weapon
- `ui brawl.txt` - List of IDs for user interface sounds

The `.txt` files are quick guides to find IDs without having to search the complete XML file.

### 📁 Wwise Unpacker
Tool to extract and decode the game's sound files:

- **Game Files/** - Place to put `.bnk` files extracted from the game
- **MP3/** - Directory where extracted files are stored in MP3 format
- **OGG/** - Directory where extracted files are stored in OGG format
- **Tools/** - Utilities for working with Wwise files
  - `bnkextr.exe` - Extracts content from `.bnk` files
  - `ww2ogg.exe` - Converts Wwise files to OGG format
  - `revorb.exe` - Optimizes OGG files after conversion
  - `ffmpeg.exe` - Tool for audio conversion between formats
  - `quickbms.exe` - Tool for file extraction
  - `wwiseutil-gui.exe` - Graphical interface for working with Wwise files
- `Unpack to MP3.bat` - Script to extract and convert sounds to MP3
- `Unpack to OGG.bat` - Script to extract sounds in OGG format (better quality)

## How to Use

### Step by Step Sound Modification

#### 1. Preparation
- [Download the Wwise launcher](https://www.audiokinetic.com/download/) and install version **2022.1.18.8567**
- Back up the original `.bnk` files of the game before any modification
- Locate the `.bnk` files in the Brawlhalla installation directory

#### 2. Identifying Sounds for Replacement
- Consult the files in the `Sounds ID/` folder to find the sound IDs
- Use the reference files organized by type:
  - `impacts brawl weapons.txt` → Impact IDs for each weapon
  - `ui brawl.txt` → IDs for interface sounds
- Example: Weak impact IDs for gauntlets (fists) are 02, 12, 14, 20, 25

#### 3. Extracting Original Sounds (Optional)
- Copy the desired `.bnk` files to the `Wwise Unpacker/Game Files` folder
- To view/listen to sounds:
  - Run `wwiseutil-gui.exe` to open and view the soundbank's content
  - Export the `.WEM` audio files to the `Wwise Unpacker/Game Files` folder
  - Use `ConvertAndOrganize.bat` to convert `.WEM` files to `.OGG`
  - The converted sounds will be available in the `OGG/` folder

#### 4. Creating Custom Sounds
- Create or edit sounds in Audacity or another audio editor
- Name the files according to the exact number of the sound file to be replaced (e.g., `04.wav`)
- The file number (e.g., 01, 03, 04) must exactly match the name of the audio in the game, not the ID
- Save the files in an organized folder on your own computer
- Files should be in WAV format for compatibility
- **Important:** You don't need to put your files in the `Audacity Sounds/` folder of the repository; this folder serves only as an example of organization

#### 5. Preparing Audio with Wwise
- If you already have WAV audio files ready, you need to convert them to WEM format:
  1. [Download and install Wwise](https://www.audiokinetic.com/download/) version **2022.1.18.8567**
  2. Open Wwise and create a new project (or use an existing one)
  3. Go to **Project → Project Settings → Source Settings** and select **Vorbis Quality High**
  4. Go to **Project → Import Audio Files...** and import your .wav files
  5. After importing, go to **Project → Convert All Audio Files...**
  6. The converted files (.wem) will be in the folder:
     `C:\Users\YourUsername\Documents\WwiseProjects\ProjectName\.cache\Windows\SFX`

#### 6. Modifying Soundbanks
- Use `wwiseutil-gui.exe` in the `Tools/` folder to open the original `.bnk` file
- In the program:
  1. Locate the correct sound using the ID as a reference for searching
  2. The sound file name (number like 01, 03, 04) is what must exactly match
  3. Click on the audio line → **Replace**
  4. Navigate to the directory that contains your converted .wem files
  5. Select the corresponding .wem file and confirm the replacement
- Save the modified `.bnk` file to your computer or in the `Modified Soundbanks/` folder

#### 7. Implementation and Testing
- Back up the original .bnk file of the game
- Replace the original `.bnk` file in the game directory with your modified file
- Start the game and test the audio modifications
- If the sound is muted during the game, there was probably a problem with the replacement
  (likely incorrect ID or incompatible format) and you will need to redo the process

## Important Notes
- **Always back up** the original `.bnk` files before replacing them
- The numbering in file names must correspond **exactly** to those of the sounds in the game
- It is **critical to use the correct name** of the sound when making replacements; otherwise, the .bnk file may be corrupted
- If sounds are muted in the game after modification, there was probably an error in the replacement (incorrect ID or incompatible format)
- Make sure to configure Wwise to use **Vorbis Quality High** in the project settings
- For better quality, extract sounds using OGG format
- If there are name conflicts during extraction, choose the "rename" (r) option when prompted
- Always test your modifications before sharing them in the repository

## Contributions
Everyone can contribute audio to this project! If you have custom sounds you'd like to share:

1. For sound effects and memes that might be useful to others: 
   - Add them to the `sfx and memes/` folder in the appropriate category
   - These will serve as resources for the community

2. For already modified and functional soundbanks (.bnk):
   - Organize them and add to the `Modified Soundbanks/` folder
   - Indicate which weapon/character was modified

3. For sound IDs you've discovered:
   - Contribute by adding to the `Sounds ID/` folder to help others find specific sounds

Submit a pull request or get in touch to add your contributions. The more people contribute, the more diverse our sound library will be.

**Remember:** Keep your personal audio files on your own computer. The `Audacity Sounds/` folder serves only as a reference for organization.

## License
This project is for personal and non-commercial use. All rights to Brawlhalla belong to Blue Mammoth Games and Ubisoft.
