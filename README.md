# Custom UICollectionView with Dynamic Cell Alignment and Scrolling Behavior

## Overview
This project demonstrates a custom `UICollectionView` with dynamic cell alignment and smooth scrolling behavior. 
The collection view contains three cells, each centered dynamically on the screen as you scroll horizontally. 
The adjacent cells remain partially visible, providing a preview of the next or previous cell.

## Features
- **Dynamic Cell Layout:**
  - Each cell takes up 50% of the screen height and 80% of the screen width.
  - The cells are aligned horizontally in the collection view, with one cell always centered during scrolling.
  
- **Smooth Scrolling and Centering:**
  - As the user scrolls through the collection, each cell smoothly aligns in the center of the screen.
  - Previous and next cells are partially visible on the edges to provide context.

- **Native Implementation:**
  - The layout is implemented using native `UICollectionView` with custom modifications for centering and dynamic cell sizing.
  - No third-party libraries or external tools are used.

## How to Use

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/shadyadel90/CustomCollectionViewLayout.git
   ```
2. **Open the Project in Xcode:**
   - Ensure you are using the latest version of Xcode.
   - The project is implemented using Swift and UIKit.

3. **Build and Run the App:**
   - Select a target device or simulator.
   - Build and run the project using `Cmd + R`.

4. **Interact with the UICollectionView:**
   - The collection view will display three cells.
   - Scroll horizontally to see the smooth centering behavior of each cell :).

