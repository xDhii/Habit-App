<p align="center">
    <h1 align="center">HABIT-APP</h1>
</p>
<p align="center">
    <em>Cultivate Your Best Self Daily!</em>
</p>
<p align="center">
	<img src="https://img.shields.io/github/last-commit/xDhii/Habit-App?style=default&logo=git&logoColor=white&color=0080ff" alt="last-commit">
	<img src="https://img.shields.io/github/languages/top/xDhii/Habit-App?style=default&color=0080ff" alt="repo-top-language">
	<img src="https://img.shields.io/github/languages/count/xDhii/Habit-App?style=default&color=0080ff" alt="repo-language-count">
<p>
<p align="center">
	<!-- default option, no dependency badges. -->
</p>

<br><!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary><br>

- [ Overview](#-overview)
- [ Features](#-features)
- [ Repository Structure](#-repository-structure)
- [ Modules](#-modules)
- [ Getting Started](#-getting-started)
  - [ Installation](#-installation)
  - [ Usage](#-usage)
  - [ Tests](#-tests)
- [ Project Roadmap](#-project-roadmap)
- [ Contributing](#-contributing)
- [ License](#-license)
- [ Acknowledgments](#-acknowledgments)
</details>
<hr>

##  Overview

The Habit-App project is an iOS application designed to help users establish and maintain healthy habits. Leveraging SwiftUI and dynamic frameworks for seamless integration, the app provides a visually appealing and intuitive platform for users to track and monitor their habits and profiles. The core functionalities include creating and displaying habits and profiles, utilizing HomeViewModel and ProfileViewModel for data interaction. The Home module, managed by HomeViewModel and HomeViewRouter, offers a comprehensive view of habits, charts, and profiles, enhancing the user experience. By encapsulating dependency management through Podfile integration, the Habit-App project simplifies the process of habit tracking and promotes the cultivation of positive lifestyle changes.

---

##  Features

|    |   Feature         | Description |
|----|-------------------|---------------------------------------------------------------|
| ⚙️  | **Architecture**  | The project follows a modular MVVM applied architecture with separate folders for different features like Home, HabitDetail, and more. SwiftUI is used for UI, enhancing user experience. |
| 🔩 | **Code Quality**  | The codebase maintains a good level of quality and style. Consistent naming conventions and clear code structure contribute to readability and maintainability. |
| 📄 | **Documentation** | The project contains informative documentation, such as setting up the iOS platform, integrating Pods like Charts, and structuring the app components. However, more detailed explanations could enhance developer onboarding. |
| 🔌 | **Integrations**  | Key integrations include Pods like Charts for data visualization, enhancing the app's functionality. Dynamic frameworks are utilized for seamless dependency management. |
| 🧩 | **Modularity**    | The codebase exhibits good modularity, with separate components for different features like Home and HabitDetail. This structure promotes code reusability and maintainability. |
| 📦 | **Dependencies**  | Key external libraries and dependencies include Charts for data visualization. Other dependencies like xcfilelist, pbxproj, and shell are utilized for various functionalities within the project. |

---

##  Repository Structure

```sh
└── Habit-App/
    ├── Assets.xcassets
    │   ├── AccentColor.colorset
    │   ├── AppIcon.appiconset
    │   ├── Contents.json
    │   ├── Images
    │   ├── Objects
    │   ├── Text
    │   ├── primaryBackgroundColor.colorset
    │   └── secondaryBackgroundColor.colorset
    ├── Habit
    │   ├── Charts
    │   ├── Common
    │   ├── Habit
    │   ├── HabitCreate
    │   ├── HabitDetail
    │   ├── Home
    │   ├── Preview Content
    │   ├── Profile
    │   ├── SignIn
    │   ├── SignUp
    │   └── Splash
    ├── Habit.xcodeproj
    │   ├── project.pbxproj
    │   ├── project.xcworkspace
    │   └── xcuserdata
    ├── Habit.xcworkspace
    │   ├── contents.xcworkspacedata
    │   └── xcshareddata
    ├── HabitApp.swift
    ├── Podfile
    ├── Podfile.lock
    └── Pods
        ├── Charts
        ├── Manifest.lock
        ├── Pods.xcodeproj
        ├── SwiftAlgorithms
        └── Target Support Files
```

---

##  Modules

<details closed><summary>.</summary>

| File                                                                            | Summary                                                                                                                                                                                                     |
| ---                                                                             | ---                                                                                                                                                                                                         |
| [Podfile](https://github.com/xDhii/Habit-App/blob/master/Podfile)               | Defines iOS platform version and integrates Charts pod for data visualization in the Habit app target. Encapsulates the dependency management setup leveraging dynamic frameworks for seamless integration. |
| [HabitApp.swift](https://github.com/xDhii/Habit-App/blob/master/HabitApp.swift) | Initiates the Habit app by displaying the SplashView with a configured SplashViewModel, setting the initial scene for the user.                                                                             |

</details>

<details closed><summary>Habit.Home.ViewModel</summary>

| File                                                                                                             | Summary                                                                                                                                                                                                                                                       |
| ---                                                                                                              | ---                                                                                                                                                                                                                                                           |
| [HomeViewModel.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Home/ViewModel/HomeViewModel.swift)   | Implements HomeViewModel in the Habit repository. Manages views for habits and profiles via HomeViewRouter. Supports creating and displaying habits without charts, along with profiles. Leveraging HabitViewModel and ProfileViewModel for data interaction. |
| [HomeViewRouter.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Home/ViewModel/HomeViewRouter.swift) | Defines routing for the Home module in the Habit app. Creates views for displaying habits and user profiles based on specified view models. Resides in the Home folder within the repositorys architecture.                                                   |

</details>

<details closed><summary>Habit.Home.View</summary>

| File                                                                                            | Summary                                                                                                                                                                                                          |
| ---                                                                                             | ---                                                                                                                                                                                                              |
| [HomeView.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Home/View/HomeView.swift) | Facilitates tab navigation within the Habit apps home screen, showcasing habits, charts, and profiles. Utilizes SwiftUI to display content based on user selection, enhancing user experience and visual appeal. |

</details>

<details closed><summary>Habit.HabitDetail.ViewModel</summary>

| File                                                                                                                                | Summary                                                                                                                                                                                                         |
| ---                                                                                                                                 | ---                                                                                                                                                                                                             |
| [HabitDetailViewModel.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/HabitDetail/ViewModel/HabitDetailViewModel.swift) | Manages state and user interactions for individual habits. Orchestrates data saving operations in the app. Key features include handling UI states, saving habit values, and communicating with the interactor. |

</details>

<details closed><summary>Habit.HabitDetail.Model</summary>

| File                                                                                                                        | Summary                                                                                                                                                            |
| ---                                                                                                                         | ---                                                                                                                                                                |
| [HabitDetailUIState.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/HabitDetail/Model/HabitDetailUIState.swift) | None`, `loading`, `success`, or `error`. Improves user experience by managing visual feedback during data fetching and processing.                                 |
| [HabitValueRequest.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/HabitDetail/Model/HabitValueRequest.swift)   | Defines a struct `HabitValueRequest` encoding a string value, facilitating data transfer within the HabitDetail feature of the Habit-App repositorys architecture. |

</details>

<details closed><summary>Habit.HabitDetail.View</summary>

| File                                                                                                                 | Summary                                                                                                                                                                                                                                                 |
| ---                                                                                                                  | ---                                                                                                                                                                                                                                                     |
| [HabitDetailView.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/HabitDetail/View/HabitDetailView.swift) | Illustrates HabitDetailView presentation and interaction. Displays habit name, related unit, input field for value, daily logging reminder. Enables saving with LoadingButtonView and canceling. Manages ViewModel bindings and presentation dismissal. |

</details>

<details closed><summary>Habit.HabitDetail.Interactor</summary>

| File                                                                                                                                               | Summary                                                                                                                                                                                                                                                       |
| ---                                                                                                                                                | ---                                                                                                                                                                                                                                                           |
| [HabitDetailInteractor.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/HabitDetail/Interactor/HabitDetailInteractor.swift)             | Manages interactions with remote data for saving habit values in the parent HabitDetail feature. Facilitates seamless communication between the app and the backend, enabling users to efficiently store their habit progress within the Habit App ecosystem. |
| [HabitDetailRemoteDataSource.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/HabitDetail/Interactor/HabitDetailRemoteDataSource.swift) | Enables saving habit values remotely by handling API requests and responses for the Habit Detail feature.                                                                                                                                                     |

</details>

<details closed><summary>Habit.Splash.ViewModel</summary>

| File                                                                                                                   | Summary                                                                                                                                                                                                                        |
| ---                                                                                                                    | ---                                                                                                                                                                                                                            |
| [SplashViewRouter.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Splash/ViewModel/SplashViewRouter.swift) | Generates views for signing in and navigating to the home screen.                                                                                                                                                              |
| [SplashViewModel.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Splash/ViewModel/SplashViewModel.swift)   | Manages user authentication and navigation flow between sign-in and home screens, with token refresh functionality. Uses Combine for reactive programming in SwiftUI, enhancing the splash screen experience in the Habit app. |

</details>

<details closed><summary>Habit.Splash.Model</summary>

| File                                                                                                           | Summary                                                                                                                                                                                          |
| ---                                                                                                            | ---                                                                                                                                                                                              |
| [RefreshRequest.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Splash/Model/RefreshRequest.swift) | Defines a `RefreshRequest` struct with a token property, conforming to `Encodable`. It encapsulates data for refreshing user authentication in the Habit app's Splash module.                    |
| [SplashUIState.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Splash/Model/SplashUIState.swift)   | Defines UI states for the Splash screen. Manages loading, navigation to Sign In/Home screens, and error handling. Integrates with the Habit apps architecture for seamless user experience flow. |

</details>

<details closed><summary>Habit.Splash.View</summary>

| File                                                                                                  | Summary                                                                                                                                                                              |
| ---                                                                                                   | ---                                                                                                                                                                                  |
| [SplashView.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Splash/View/SplashView.swift) | Displays a dynamic Splash screen based on the app state. Renders loading, sign-in, home views, or error alerts. Utilizes SwiftUI with a concise design for seamless user onboarding. |

</details>

<details closed><summary>Habit.Splash.Interactor</summary>

| File                                                                                                                                | Summary                                                                                                                                                                                                                                                                                                          |
| ---                                                                                                                                 | ---                                                                                                                                                                                                                                                                                                              |
| [SplashRemoteDataSource.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Splash/Interactor/SplashRemoteDataSource.swift) | Handles refreshing user token securely using Combine to interact with API, providing sign-in responses or error messages based on success or failure. Maintains a singleton instance for remote data source interactions within the Splash module of the Habit app, supporting overall user authentication flow. |
| [SplashInteractor.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Splash/Interactor/SplashInteractor.swift)             | Handles user authentication by fetching, refreshing tokens, and saving user authentication data. Interfaces with local and remote data sources to manage user authentication seamlessly within the Habit app architecture.                                                                                       |

</details>

<details closed><summary>Habit.Habit.ViewModel</summary>

| File                                                                                                                        | Summary                                                                                                                                                                                                                                              |
| ---                                                                                                                         | ---                                                                                                                                                                                                                                                  |
| [HabitCardViewRouter.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Habit/ViewModel/HabitCardViewRouter.swift) | Creates navigation paths for displaying detailed habit information and charts._FACTORY_METHODS to instantiate ViewModels and return corresponding Views for Habit Detail and Charts, interacting with the Habit repository architecture.             |
| [HabitViewModel.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Habit/ViewModel/HabitViewModel.swift)           | Defines HabitViewModel for managing UI state and data presentation. Retrieves and processes habits data, updating the UI accordingly. Generates a list of HabitCardViewModels based on fetched data, permitting user interaction for habit creation. |
| [HabitCardViewModel.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Habit/ViewModel/HabitCardViewModel.swift)   | Enables rendering Habit detail and chart views based on provided data, facilitating seamless user interactions within the Habit section of the repositorys SwiftUI-based mobile application.                                                         |
| [HabitViewRouter.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Habit/ViewModel/HabitViewRouter.swift)         | Creates a view for creating habits, integrating with the Habit repositorys architecture. The HabitCreateView is generated based on the HabitCreateViewModel and an interactor.                                                                       |

</details>

<details closed><summary>Habit.Habit.Model</summary>

| File                                                                                                        | Summary                                                                                                                                                                          |
| ---                                                                                                         | ---                                                                                                                                                                              |
| [HabitModel.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Habit/Model/HabitModel.swift)       | Loading, empty list, full list, or error message with associated view models for habit cards.                                                                                    |
| [HabitResponse.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Habit/Model/HabitResponse.swift) | Defines a `HabitResponse` model struct with properties for habit details like ID, name, label, icon URL, value, and last date. Maps JSON keys to struct properties for decoding. |

</details>

<details closed><summary>Habit.Habit.View</summary>

| File                                                                                                       | Summary                                                                                                                                                                                                                                                                                 |
| ---                                                                                                        | ---                                                                                                                                                                                                                                                                                     |
| [HabitCardView.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Habit/View/HabitCardView.swift) | Illustrates a dynamic HabitCardView enabling chart or detail navigation. Renders habit data elegantly with icons, names, labels, values, and dates. Features interactive elements, dynamic coloring, and stylized visuals for engaging user interaction within the Habit app structure. |
| [HabitView.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Habit/View/HabitView.swift)         | Illustrates a dynamic HabitView displaying habits with loading, empty, full, and error states. Implements topContainer, addButton for habit creation, and progress indicator. Integrates with ViewModel to provide user-centric habit management functionalities.                       |

</details>

<details closed><summary>Habit.Habit.Interactor</summary>

| File                                                                                                                             | Summary                                                                                                                                                                                                                                                           |
| ---                                                                                                                              | ---                                                                                                                                                                                                                                                               |
| [HabitRemoteDataSource.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Habit/Interactor/HabitRemoteDataSource.swift) | Implements fetching habits data from the remote server using Combine framework. Handles success and error response scenarios while decoding JSON data. Defining a singleton instance for HabitRemoteDataSource to facilitate habit data retrieval across the app. |
| [HabitInteractor.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Habit/Interactor/HabitInteractor.swift)             | Implements HabitInteractor to fetch habits. Utilizes HabitRemoteDataSource for fetching data, facilitating separation of concerns within the Habit repositorys architecture.                                                                                      |

</details>

<details closed><summary>Habit.SignUp.ViewModel</summary>

| File                                                                                                                   | Summary                                                                                                                                                                                                                                                    |
| ---                                                                                                                    | ---                                                                                                                                                                                                                                                        |
| [SignUpViewModel.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/SignUp/ViewModel/SignUpViewModel.swift)   | Manages user sign-up process by handling form data, validation, and API requests.-Initiates user authentication upon successful sign-up.-Includes logic for formatting date of birth and handling responses.-Offers a method to navigate to the home view. |
| [SignUpViewRouter.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/SignUp/ViewModel/SignUpViewRouter.swift) | Creates a route to generate the Home view using a specific ViewModel object.                                                                                                                                                                               |

</details>

<details closed><summary>Habit.SignUp.Model</summary>

| File                                                                                                           | Summary                                                                                                                                                                                                   |
| ---                                                                                                            | ---                                                                                                                                                                                                       |
| [SignUpRequest.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/SignUp/Model/SignUpRequest.swift)   | Defines a SignUp request structure for the Habit app, encoding user details including name, email, password, and personal information. Central to handling user registration within the app architecture. |
| [SignUpUIState.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/SignUp/Model/SignUpUIState.swift)   | None, loading, success, error message. Crucial for managing UI feedback during user signup. Aids in displaying appropriate visuals and messages for a seamless user experience within the Habit app.      |
| [SignUpResponse.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/SignUp/Model/SignUpResponse.swift) | Defines the structure for handling sign up responses in the Habit app, ensuring seamless communication with backend services.                                                                             |

</details>

<details closed><summary>Habit.SignUp.View</summary>

| File                                                                                                  | Summary                                                                                                                                                                                                                                                                    |
| ---                                                                                                   | ---                                                                                                                                                                                                                                                                        |
| [SignUpView.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/SignUp/View/SignUpView.swift) | Illustrates user signup interface with fields for full name, email, password, document, phone, birthday, and gender. Facilitates input validation, error handling, and a signup button. Contributes to the Habit apps user registration flow within its SwiftUI structure. |

</details>

<details closed><summary>Habit.SignUp.Interactor</summary>

| File                                                                                                                                | Summary                                                                                                                                                                                                                    |
| ---                                                                                                                                 | ---                                                                                                                                                                                                                        |
| [SignUpInteractor.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/SignUp/Interactor/SignUpInteractor.swift)             | Posting user sign-up data, handling user login requests, and securely storing user authentication details.                                                                                                                 |
| [SignUpRemoteDataSource.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/SignUp/Interactor/SignUpRemoteDataSource.swift) | Enables posting user data to the server in the Habit app. Uses Combine framework for asynchronous handling. Handles server responses and error cases gracefully. Supports SignUp feature in the apps overall architecture. |

</details>

<details closed><summary>Habit.Charts.ViewModel</summary>

| File                                                                                                               | Summary                                                                                                                                    |
| ---                                                                                                                | ---                                                                                                                                        |
| [ChartViewModel.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Charts/ViewModel/ChartViewModel.swift) | Manages chart data population and UI state based on habit values. Fetches and processes habit data entries, updating UI state accordingly. |

</details>

<details closed><summary>Habit.Charts.Model</summary>

| File                                                                                                                   | Summary                                                                                                                                                                                  |
| ---                                                                                                                    | ---                                                                                                                                                                                      |
| [ChartUIState.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Charts/Model/ChartUIState.swift)             | Defines chart UI states for displaying loading, empty chart, full chart, or error message in the Habit apps Chart module, enhancing user experience and data visualization.              |
| [HabitValueResponse.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Charts/Model/HabitValueResponse.swift) | Defines HabitValueResponse structure; maps properties from backend API response; handles decoding into Swift types. Integrated in the Charts module to manage habit data and its values. |

</details>

<details closed><summary>Habit.Charts.View</summary>

| File                                                                                                      | Summary                                                                                                                                                                                                                                                                                 |
| ---                                                                                                       | ---                                                                                                                                                                                                                                                                                     |
| [ChartView.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Charts/View/ChartView.swift)       | Defines a dynamic ChartView component for habit data visualization in the Habit app. Renders loading indicators, empty state, and error messages based on ChartUIState. Displays a customizable BoxChartView for habit progress tracking. Interactive UI elements trigger data refresh. |
| [BoxChartView.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Charts/View/BoxChartView.swift) | Implements BoxChartView to display a customizable line chart in the Habit app, ensuring smooth user interface with date formatting and gradient colors.                                                                                                                                 |

</details>

<details closed><summary>Habit.Charts.Interactor</summary>

| File                                                                                                                              | Summary                                                                                                                                                                                                                                             |
| ---                                                                                                                               | ---                                                                                                                                                                                                                                                 |
| [ChartRemoteDataSource.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Charts/Interactor/ChartRemoteDataSource.swift) | Enables fetching habit values from the web service for a given habit ID. Implements error handling and decoding responses. Key contributor to the Habit apps remote data retrieval functionality within the repositorys Charts module architecture. |
| [ChartInteractor.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Charts/Interactor/ChartInteractor.swift)             | Manages fetching habit values from the remote data source for a specific habit ID in the Habit apps Charts module.                                                                                                                                  |

</details>

<details closed><summary>Habit.HabitCreate.ViewModel</summary>

| File                                                                                                                                | Summary                                                                                                                                                                                                |
| ---                                                                                                                                 | ---                                                                                                                                                                                                    |
| [HabitCreateViewModel.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/HabitCreate/ViewModel/HabitCreateViewModel.swift) | Manages state and actions for creating habits. Publishes UI state changes and enables habit creation with a name, label, and image. Persists new habits via the interactor and updates UI accordingly. |

</details>

<details closed><summary>Habit.HabitCreate.Model</summary>

| File                                                                                                                        | Summary                                                                                   |
| ---                                                                                                                         | ---                                                                                       |
| [HabitCreateRequest.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/HabitCreate/Model/HabitCreateRequest.swift) | Defines data structure for creating a habit, including imageData, name, and label fields. |

</details>

<details closed><summary>Habit.HabitCreate.View</summary>

| File                                                                                                                 | Summary                                                                                                                                                                                                                                 |
| ---                                                                                                                  | ---                                                                                                                                                                                                                                     |
| [HabitCreateView.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/HabitCreate/View/HabitCreateView.swift) | Illustrates creating a new habit within the app. Displays fields for habit details, image attachment, and saving/canceling actions in a visually pleasing layout. Integrates camera functionality and ensures a smooth user experience. |

</details>

<details closed><summary>Habit.HabitCreate.Interactor</summary>

| File                                                                                                                                               | Summary                                                                                                                                                                                                                                  |
| ---                                                                                                                                                | ---                                                                                                                                                                                                                                      |
| [HabitCreateInteractor.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/HabitCreate/Interactor/HabitCreateInteractor.swift)             | Manages Habit creation by saving user input via remote data source in the Habit section of the Habit-App repository.                                                                                                                     |
| [HabitCreateRemoteDataSource.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/HabitCreate/Interactor/HabitCreateRemoteDataSource.swift) | Implements saving habit creation data to the remote server. Handles response errors, including unauthorized access, and triggers appropriate error messages. Key part of the Habit-App architecture for creating and storing new habits. |

</details>

<details closed><summary>Habit.Preview Content.Preview Assets.xcassets</summary>

| File                                                                                                                        | Summary                                                                                 |
| ---                                                                                                                         | ---                                                                                     |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Habit/Preview Content/Preview Assets.xcassets/Contents.json) | Defines author and version metadata for Preview Assets in the Habit iOS app repository. |

</details>

<details closed><summary>Habit.Common.Network</summary>

| File                                                                                                               | Summary                                                                                                                                                                                                                                                                    |
| ---                                                                                                                | ---                                                                                                                                                                                                                                                                        |
| [WebService.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Common/Network/WebService.swift)           | Defines network requests using RESTful methods and handles different content types. Supports authentication, error handling, and multipart/form-data requests. Facilitates API interaction for the Habit App by establishing communication with the defined base endpoint. |
| [Mask.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Common/Network/Mask.swift)                       | Implements a mask feature for formatting user input in the Habit app. Detects and handles input changes, updating the displayed text accordingly.                                                                                                                          |
| [LocalDataSource.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Common/Network/LocalDataSource.swift) | Manages local user authentication data, providing methods to save and retrieve UserAuth objects using UserDefaults. Helps the Habit app store and access user credentials securely on the device.                                                                          |

</details>

<details closed><summary>Habit.Common.Lang</summary>

| File                                                                                                              | Summary                                                                                                                                                 |
| ---                                                                                                               | ---                                                                                                                                                     |
| [Date+Extension.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Common/Lang/Date+Extension.swift)     | Enhances date manipulation by converting it to a specified format, crucial for displaying dates across the Habit repositorys user interface elements.   |
| [String+Extension.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Common/Lang/String+Extension.swift) | Extends String functionality for character access, email validation, and date conversion to match specific formats within the Habit apps Common module. |

</details>

<details closed><summary>Habit.Common.Model</summary>

| File                                                                                                         | Summary                                                                                                                                                                                                                                                        |
| ---                                                                                                          | ---                                                                                                                                                                                                                                                            |
| [Gender.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Common/Model/Gender.swift)               | Defines gender enum with male and female cases for use within the common model section of the Habit app. Allows easy iteration through all cases and accessing index position.                                                                                 |
| [UserAuth.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Common/Model/UserAuth.swift)           | Defines user authentication model with token properties. Keyed for Codable compliance.                                                                                                                                                                         |
| [AppError.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Common/Model/AppError.swift)           | Defines custom error type for handling response messages in the Habit app. The `AppError` enum encapsulates various error cases, with a specific case for response messages. It provides a clear way to manage and convey errors related to network responses. |
| [ErrorResponse.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Common/Model/ErrorResponse.swift) | Defines a struct to decode error responses with a single property detail. It plays a crucial role in managing error handling within the Habit app's common model framework.                                                                                    |

</details>

<details closed><summary>Habit.Common.View</summary>

| File                                                                                                                    | Summary                                                                                                                                                                                                                                                                                     |
| ---                                                                                                                     | ---                                                                                                                                                                                                                                                                                         |
| [ImagePicker.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Common/View/ImagePicker.swift)                 | Enables SwiftUI to interact with the systems image picker for selecting photos and resizing them.ConverterFactory pattern implementation in a habit tracking app.                                                                                                                           |
| [LoadingButtonView.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Common/View/LoadingButtonView.swift)     | Enables interactive buttons with loading indicator in Habit app. Renders button text or progress spinner based on current state. Supports customization for action, text, and styling. Essential for enhancing user experience during asynchronous tasks.                                   |
| [EditTextView.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Common/View/EditTextView.swift)               | Enables user input handling with validation in SwiftUI. Supports secure and standard text fields, custom keyboard types, autocapitalization, and error messages. Applies optional text masking for specified formats, enhancing the user experience in the Habit parent repositorys app UI. |
| [ImageView.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Common/View/ImageView.swift)                     | Illustrates asynchronous image loading from a URL using SwiftUI, aiding efficient rendering and resource handling within the Habit apps Common module.                                                                                                                                      |
| [ProfileEditTextView.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Common/View/ProfileEditTextView.swift) | Enables user text editing in the Profile section by providing a customizable text input field with features like placeholder text, keyboard type selection, and optional masking functionality.                                                                                             |

</details>

<details closed><summary>Habit.Common.View.Modifier</summary>

| File                                                                                                             | Summary                                                                                                                                                                                                              |
| ---                                                                                                              | ---                                                                                                                                                                                                                  |
| [ButtonStyle.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Common/View/Modifier/ButtonStyle.swift) | Enhances button styling for a consistent user experience across the Habit app. Customizes button appearance with full-width, padding, bold text, specific colors, rounded corners, all within the SwiftUI framework. |

</details>

<details closed><summary>Habit.Common.View.Style</summary>

| File                                                                                                                            | Summary                                                                                                                                                                                                           |
| ---                                                                                                                             | ---                                                                                                                                                                                                               |
| [CustomTextFieldStyle.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Common/View/Style/CustomTextFieldStyle.swift) | Defines a custom style for text fields in the Habit app, enhancing visual consistency and user experience. Configures text field padding, colors, and borders to ensure a cohesive design across the application. |

</details>

<details closed><summary>Habit.SignIn.ViewModel</summary>

| File                                                                                                                   | Summary                                                                                                                                                                                                       |
| ---                                                                                                                    | ---                                                                                                                                                                                                           |
| [SignInViewRouter.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/SignIn/ViewModel/SignInViewRouter.swift) | Creates views for navigating to the Home and SignUp screens with appropriate view models. Maintains separation of concerns in the Habit repository architecture by encapsulating view creation logic.         |
| [SignInViewModel.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/SignIn/ViewModel/SignInViewModel.swift)   | Enables user authentication and redirection to the home screen. Handles login requests, updates UI state, and manages user authentication tokens. Provides methods to navigate to the home and sign-up views. |

</details>

<details closed><summary>Habit.SignIn.Model</summary>

| File                                                                                                                     | Summary                                                                                                                                                                        |
| ---                                                                                                                      | ---                                                                                                                                                                            |
| [SignInResponse.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/SignIn/Model/SignInResponse.swift)           | Defines SignInResponse structure for decoding API response in Habit App, storing accessToken, refreshToken, expires, and tokenType. Organized with CodingKeys for key mapping. |
| [SignInRequest.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/SignIn/Model/SignInRequest.swift)             | Defines the structure for user sign-in request, capturing email and password data. Essential for handling authentication within the Habit Apps Sign-In feature.                |
| [SignInUIState.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/SignIn/Model/SignInUIState.swift)             | None, loading, go to home screen, error.                                                                                                                                       |
| [SignInErrorResponse.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/SignIn/Model/SignInErrorResponse.swift) | Describes and models sign-in error responses with detailed messages.                                                                                                           |

</details>

<details closed><summary>Habit.SignIn.View</summary>

| File                                                                                                  | Summary                                                                                                                                                                                                              |
| ---                                                                                                   | ---                                                                                                                                                                                                                  |
| [SignInView.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/SignIn/View/SignInView.swift) | Displays a sign-in interface with email and password fields, a login button, and a registration link. Transitions to the home screen upon successful login. Follows the UIState to manage the user interaction flow. |

</details>

<details closed><summary>Habit.SignIn.Interactor</summary>

| File                                                                                                                                | Summary                                                                                                                                                                                                                  |
| ---                                                                                                                                 | ---                                                                                                                                                                                                                      |
| [SignInInteractor.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/SignIn/Interactor/SignInInteractor.swift)             | Enables login functionality and user authentication insertion in the Habit app. Communicates with remote and local data sources seamlessly.                                                                              |
| [SignInRemoteDataSource.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/SignIn/Interactor/SignInRemoteDataSource.swift) | Enables remote login functionality for the Habit app. Handles authentication requests with a web service using Combine framework. Handles response decoding and error handling for successful and failed login attempts. |

</details>

<details closed><summary>Habit.Profile.ViewModel</summary>

| File                                                                                                                    | Summary                                                                                                                                                                                                          |
| ---                                                                                                                     | ---                                                                                                                                                                                                              |
| [ProfileViewModel.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Profile/ViewModel/ProfileViewModel.swift) | Manages profile data interactions with UI states.-Fetches and updates user profile information.-Validates full name, phone, and birthday inputs.-Ensures data format consistency for communication with the API. |

</details>

<details closed><summary>Habit.Profile.Model</summary>

| File                                                                                                              | Summary                                                                                                                                                                                                                                 |
| ---                                                                                                               | ---                                                                                                                                                                                                                                     |
| [ProfileUIState.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Profile/Model/ProfileUIState.swift)   | Defines states for profile data loading and updating in the Habit app. Handles scenarios like loading, success, and error for fetching and updating profile information. Centralizes UI state management within the Profile feature.    |
| [ProfileRequest.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Profile/Model/ProfileRequest.swift)   | Defines a data structure for encoding profile details in the Habit app. Includes full name, phone, birthday, and gender fields mapped to specific keys for serialization. Part of the Profile module in the Habit repository structure. |
| [ProfileResponse.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Profile/Model/ProfileResponse.swift) | Defines ProfileResponse model structure mapping for user data in the Profile feature of the Habit app. Includes properties like id, fullName, email, document, phone, birthday, and gender for decoding incoming JSON data.             |

</details>

<details closed><summary>Habit.Profile.View</summary>

| File                                                                                                                   | Summary                                                                                                                                                                                                                                                        |
| ---                                                                                                                    | ---                                                                                                                                                                                                                                                            |
| [ProfileView.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Profile/View/ProfileView.swift)               | Showcases user profile data editing with validation and update functionality. Implements UI based on loading states. Ensures user-friendliness through error alerts. Facilitates seamless interaction with the backend for fetching and updating user details. |
| [GenderSelectorView.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Profile/View/GenderSelectorView.swift) | Displays a gender selection interface with dynamic color styling based on user interaction. Supports interaction with a tap gesture for updating the selected gender. Designed for the Habit apps Profile section.                                             |

</details>

<details closed><summary>Habit.Profile.Interactor</summary>

| File                                                                                                                                   | Summary                                                                                                                                                                                                                 |
| ---                                                                                                                                    | ---                                                                                                                                                                                                                     |
| [ProfileInteractor.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Profile/Interactor/ProfileInteractor.swift)             | Retrieves and updates user data through remote API calls in the Profile feature. Uses `ProfileRemoteDataSource` for network operations.                                                                                 |
| [ProfileRemoteDataSource.swift](https://github.com/xDhii/Habit-App/blob/master/Habit/Profile/Interactor/ProfileRemoteDataSource.swift) | Enables fetching and updating user profile data from a remote data source. Implements methods to retrieve and update user information, handling response parsing and error handling for the Habit Apps Profile feature. |

</details>

<details closed><summary>Assets.xcassets</summary>

| File                                                                                          | Summary                                                                                                                                         |
| ---                                                                                           | ---                                                                                                                                             |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Contents.json) | Defines author and version metadata for the asset catalog in the Habit-App repository, ensuring consistency and tracking in the iOS app design. |

</details>

<details closed><summary>Assets.xcassets.Images</summary>

| File                                                                                                 | Summary                                                                                                                                                     |
| ---                                                                                                  | ---                                                                                                                                                         |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Images/Contents.json) | Defines metadata for image assets in the iOS app, specifying authorship and file version within the repository structures Assets.xcassets/Images directory. |

</details>

<details closed><summary>Assets.xcassets.Images.logoImage.imageset</summary>

| File                                                                                                                    | Summary                                                                                                                                                        |
| ---                                                                                                                     | ---                                                                                                                                                            |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Images/logoImage.imageset/Contents.json) | Defines different logo images for the Habit-App. Organizes images by scale factors for universal use. Supports branding and visual consistency across the app. |

</details>

<details closed><summary>Assets.xcassets.primaryBackgroundColor.colorset</summary>

| File                                                                                                                          | Summary                                                                                                                                                                                          |
| ---                                                                                                                           | ---                                                                                                                                                                                              |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/primaryBackgroundColor.colorset/Contents.json) | Defines primary and dark mode background colors using sRGB and display-P3 color spaces for universal ideom in Habit-Apps Assets.xcassets, enhancing overall UI/UX consistency and accessibility. |

</details>

<details closed><summary>Assets.xcassets.Objects</summary>

| File                                                                                                  | Summary                                                                                                      |
| ---                                                                                                   | ---                                                                                                          |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Objects/Contents.json) | Defines authorship and version information for assets in Habit-App, vital for maintenance and collaboration. |

</details>

<details closed><summary>Assets.xcassets.Objects.Charts</summary>

| File                                                                                                         | Summary                                                                                            |
| ---                                                                                                          | ---                                                                                                |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Objects/Charts/Contents.json) | Defines author and version information for charts used in the Habit-App repositorys design assets. |

</details>

<details closed><summary>Assets.xcassets.Objects.Charts.chartValueColor.colorset</summary>

| File                                                                                                                                  | Summary                                                                                                                                                                                     |
| ---                                                                                                                                   | ---                                                                                                                                                                                         |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Objects/Charts/chartValueColor.colorset/Contents.json) | Defines color values for chart elements to ensure a consistent appearance across light and dark modes. The file specifies color components in two color spaces for universal compatibility. |

</details>

<details closed><summary>Assets.xcassets.Objects.Charts.fillBottomGradientColor.colorset</summary>

| File                                                                                                                                          | Summary                                                                                                                                                                                                                                               |
| ---                                                                                                                                           | ---                                                                                                                                                                                                                                                   |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Objects/Charts/fillBottomGradientColor.colorset/Contents.json) | Defines gradient colors for charts supporting both light and dark modes in the Habit-App. Ensures a visually appealing user interface by incorporating P3 color space. Complements the apps visual design strategy across various screen appearances. |

</details>

<details closed><summary>Assets.xcassets.Objects.Charts.chartLineColor.colorset</summary>

| File                                                                                                                                 | Summary                                                                                                                                                                                     |
| ---                                                                                                                                  | ---                                                                                                                                                                                         |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Objects/Charts/chartLineColor.colorset/Contents.json) | Defines color schemes for the charts in the Habit App. Specifies universal and dark mode appearances with RGB values. Maintains consistency across the apps user interface design elements. |

</details>

<details closed><summary>Assets.xcassets.Objects.Charts.chartCircleColor.colorset</summary>

| File                                                                                                                                   | Summary                                                                                                                                                         |
| ---                                                                                                                                    | ---                                                                                                                                                             |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Objects/Charts/chartCircleColor.colorset/Contents.json) | Defines color settings for circular charts, ensuring visual consistency across light and dark modes. Enhances user experience by maintaining aesthetic quality. |

</details>

<details closed><summary>Assets.xcassets.Objects.Charts.chartAxisLineColor.colorset</summary>

| File                                                                                                                                     | Summary                                                                                                                                                                                                                                   |
| ---                                                                                                                                      | ---                                                                                                                                                                                                                                       |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Objects/Charts/chartAxisLineColor.colorset/Contents.json) | Sets color configurations for chart axis lines in dark mode, ensuring visual consistency across app screens. Supports universal displays and multiple color spaces, enhancing user experience in Habit-Apps chart visualization features. |

</details>

<details closed><summary>Assets.xcassets.Objects.Charts.fillTopGradientColor.colorset</summary>

| File                                                                                                                                       | Summary                                                                                                                                                                              |
| ---                                                                                                                                        | ---                                                                                                                                                                                  |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Objects/Charts/fillTopGradientColor.colorset/Contents.json) | Defines gradient colors for charts in various appearances, supporting dark mode. Enhances visual aesthetics and user experience in chart components across the Habit-App repository. |

</details>

<details closed><summary>Assets.xcassets.Objects.TextField</summary>

| File                                                                                                            | Summary                                                                               |
| ---                                                                                                             | ---                                                                                   |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Objects/TextField/Contents.json) | Defines author and version details for Text Field assets, aiding in asset management. |

</details>

<details closed><summary>Assets.xcassets.Objects.TextField.borderColor.colorset</summary>

| File                                                                                                                                 | Summary                                                                                                                                                                                                            |
| ---                                                                                                                                  | ---                                                                                                                                                                                                                |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Objects/TextField/borderColor.colorset/Contents.json) | Defines universal and dark mode border color for text fields to ensure consistent user experience in the Habit-App. Maintains a harmonious color palette for text field borders across different appearance modes. |

</details>

<details closed><summary>Assets.xcassets.Objects.TextField.errorColor.colorset</summary>

| File                                                                                                                                | Summary                                                                                                                                                                                                                        |
| ---                                                                                                                                 | ---                                                                                                                                                                                                                            |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Objects/TextField/errorColor.colorset/Contents.json) | Specifies error color for text field in Habit-Apps visual assets. Maintains consistent error color system-wide with systemRedColor reference. Enhances visual consistency for error feedback across the apps forms and inputs. |

</details>

<details closed><summary>Assets.xcassets.Objects.TextField.shadowColor.colorset</summary>

| File                                                                                                                                 | Summary                                                                                                                                                                                                                                                    |
| ---                                                                                                                                  | ---                                                                                                                                                                                                                                                        |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Objects/TextField/shadowColor.colorset/Contents.json) | Defines shadow colors for text fields, supporting both light and dark appearances. Enhances user interface with dynamic color changes based on display settings. Crucial for ensuring optimal readability and accessibility within the apps design system. |

</details>

<details closed><summary>Assets.xcassets.Objects.TextField.textFieldBackgroundColor.colorset</summary>

| File                                                                                                                                              | Summary                                                                                                                                                                                                                                                                                 |
| ---                                                                                                                                               | ---                                                                                                                                                                                                                                                                                     |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Objects/TextField/textFieldBackgroundColor.colorset/Contents.json) | Defines dark and light background colors for text fields to ensure readability in different appearances. Enhances user experience by adapting text field aesthetics based on luminosity settings. Part of the Habit-Apps Assets structure to improve visual consistency across the app. |

</details>

<details closed><summary>Assets.xcassets.Objects.Button</summary>

| File                                                                                                         | Summary                                                                                                                    |
| ---                                                                                                          | ---                                                                                                                        |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Objects/Button/Contents.json) | Defines author and version info for a button in the Habit-App projects Assets, ensuring consistency and metadata accuracy. |

</details>

<details closed><summary>Assets.xcassets.Objects.Button.enabledPrimaryButtonTextColor.colorset</summary>

| File                                                                                                                                                | Summary                                                                                                                                                                                                             |
| ---                                                                                                                                                 | ---                                                                                                                                                                                                                 |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Objects/Button/enabledPrimaryButtonTextColor.colorset/Contents.json) | Defines universal button text colors for light and dark modes in the Habit-App Assets. Supports seamless visual consistency across the apps various user interfaces for enhanced accessibility and user experience. |

</details>

<details closed><summary>Assets.xcassets.Objects.Button.enabledSecondaryButtonTextColor.colorset</summary>

| File                                                                                                                                                  | Summary                                                                                                                                                                                             |
| ---                                                                                                                                                   | ---                                                                                                                                                                                                 |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Objects/Button/enabledSecondaryButtonTextColor.colorset/Contents.json) | Defines color properties for secondary button text in dark mode. Maintains color consistency for universal appearance. Supports accessibility and enhances user experience across the Habit-App UI. |

</details>

<details closed><summary>Assets.xcassets.Objects.Button.enabledSecondaryButtonBackgroundColor.colorset</summary>

| File                                                                                                                                                        | Summary                                                                                                       |
| ---                                                                                                                                                         | ---                                                                                                           |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Objects/Button/enabledSecondaryButtonBackgroundColor.colorset/Contents.json) | Defines dark mode and universal button colors in the Habit-Apps Assets directory, enhancing UI accessibility. |

</details>

<details closed><summary>Assets.xcassets.Objects.Button.disabledButtonTextColor.colorset</summary>

| File                                                                                                                                          | Summary                                                                                                                                                                        |
| ---                                                                                                                                           | ---                                                                                                                                                                            |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Objects/Button/disabledButtonTextColor.colorset/Contents.json) | Defines disabled button text color variations for light and dark appearances in the Habit-App UI. Uses extended sRGB and sRGB color spaces with specific RGB component values. |

</details>

<details closed><summary>Assets.xcassets.Objects.Button.disabledButtonBackgroundColor.colorset</summary>

| File                                                                                                                                                | Summary                                                                                                                                                                             |
| ---                                                                                                                                                 | ---                                                                                                                                                                                 |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Objects/Button/disabledButtonBackgroundColor.colorset/Contents.json) | Define universal and dark mode disabled button background colors in Assets Objects/Button directory for cross-platform consistency and accessibility within the Habit-App UI theme. |

</details>

<details closed><summary>Assets.xcassets.Objects.Button.enabledPrimaryButtonBackgroundColor.colorset</summary>

| File                                                                                                                                                      | Summary                                                                                                                                                                                   |
| ---                                                                                                                                                       | ---                                                                                                                                                                                       |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Objects/Button/enabledPrimaryButtonBackgroundColor.colorset/Contents.json) | Defines primary and dark mode button background colors for universal usage within the Habit-App. Centralizes color definitions to ensure consistent UI appearance across the application. |

</details>

<details closed><summary>Assets.xcassets.Objects.Icons</summary>

| File                                                                                                        | Summary                                        |
| ---                                                                                                         | ---                                            |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Objects/Icons/Contents.json) | Defines author and version metadata for Icons. |

</details>

<details closed><summary>Assets.xcassets.Objects.Icons.checkmarkUnselectedColor.colorset</summary>

| File                                                                                                                                          | Summary                                                                                                                    |
| ---                                                                                                                                           | ---                                                                                                                        |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Objects/Icons/checkmarkUnselectedColor.colorset/Contents.json) | Defines universal and dark mode appearance colors for checkmark icon. Supports apps visual consistency across iOS devices. |

</details>

<details closed><summary>Assets.xcassets.Objects.Icons.secondaryIconColor.colorset</summary>

| File                                                                                                                                    | Summary                                                                                                                                                                                                             |
| ---                                                                                                                                     | ---                                                                                                                                                                                                                 |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Objects/Icons/secondaryIconColor.colorset/Contents.json) | Defines secondary icon colors for dark mode using sRGB components in the Icons folder within the Objects section of the Assets catalog, ensuring consistent visual appearance across the Habit Apps user interface. |

</details>

<details closed><summary>Assets.xcassets.Objects.Icons.primaryIconColor.colorset</summary>

| File                                                                                                                                  | Summary                                                                                                                                                                                                                                                  |
| ---                                                                                                                                   | ---                                                                                                                                                                                                                                                      |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Objects/Icons/primaryIconColor.colorset/Contents.json) | Defines primary and dark mode icon colors in the Habit-App repositorys Assets. Sets sRGB color components, adapting icons for universal use with luminosity variations. Supports a cohesive visual experience across various screens in the application. |

</details>

<details closed><summary>Assets.xcassets.Objects.Icons.checkmarkSelectedColor.colorset</summary>

| File                                                                                                                                        | Summary                                                                                                                                                                                                                          |
| ---                                                                                                                                         | ---                                                                                                                                                                                                                              |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Objects/Icons/checkmarkSelectedColor.colorset/Contents.json) | Defines checkmark colors for light and dark modes in the Habit Apps asset catalog structure under Objects/Icons. The JSON file specifies RGB values for the checkmark, ensuring visual consistency across different appearances. |

</details>

<details closed><summary>Assets.xcassets.secondaryBackgroundColor.colorset</summary>

| File                                                                                                                            | Summary                                                                                                                                           |
| ---                                                                                                                             | ---                                                                                                                                               |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/secondaryBackgroundColor.colorset/Contents.json) | Defines secondary background colors for light and dark appearances with specific RGB components to enhance visual consistency across app screens. |

</details>

<details closed><summary>Assets.xcassets.AppIcon.appiconset</summary>

| File                                                                                                             | Summary                                                                                                                                                                                                             |
| ---                                                                                                              | ---                                                                                                                                                                                                                 |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/AppIcon.appiconset/Contents.json) | Specifies the main app icon details for iOS devices in Habit-Apps Assets. Identifies the icons file name, dimensions, platform, and ID. A critical part of the app's visual branding and user recognition strategy. |

</details>

<details closed><summary>Assets.xcassets.AccentColor.colorset</summary>

| File                                                                                                               | Summary                                                                    |
| ---                                                                                                                | ---                                                                        |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/AccentColor.colorset/Contents.json) | Defines universal color sets for the apps accent color, authored by Xcode. |

</details>

<details closed><summary>Assets.xcassets.Text</summary>

| File                                                                                               | Summary                                                                                                                                                                              |
| ---                                                                                                | ---                                                                                                                                                                                  |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Text/Contents.json) | Defines authorship and version info for text assets. Ensures proper attribution and version tracking for text resources used in the Habit-App repositorys user interface components. |

</details>

<details closed><summary>Assets.xcassets.Text.Title</summary>

| File                                                                                                     | Summary                                                                                          |
| ---                                                                                                      | ---                                                                                              |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Text/Title/Contents.json) | Defines author and version metadata for the Title Text asset in the apps resource configuration. |

</details>

<details closed><summary>Assets.xcassets.Text.Title.primaryTitleColor.colorset</summary>

| File                                                                                                                                | Summary                                                                                                                                                                                                                   |
| ---                                                                                                                                 | ---                                                                                                                                                                                                                       |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Text/Title/primaryTitleColor.colorset/Contents.json) | Specifies primary title color settings for universal and dark appearances in the Habit-Apps assets. Maintains color values in P3 and sRGB color spaces for consistent UI presentation across different devices and modes. |

</details>

<details closed><summary>Assets.xcassets.Text.Title.primarySubtitleColor.colorset</summary>

| File                                                                                                                                   | Summary                                                                                                                                                                           |
| ---                                                                                                                                    | ---                                                                                                                                                                               |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Text/Title/primarySubtitleColor.colorset/Contents.json) | Defines color properties for universal display and dark modes in primarySubtitleColor used for title text, ensuring consistent visual appearance across screens in the Habit-App. |

</details>

<details closed><summary>Assets.xcassets.Text.Content</summary>

| File                                                                                                       | Summary                                                                    |
| ---                                                                                                        | ---                                                                        |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Text/Content/Contents.json) | Defines asset metadata for Xcode. Contains author and version information. |

</details>

<details closed><summary>Assets.xcassets.Text.Content.secondaryTextColor.colorset</summary>

| File                                                                                                                                   | Summary                                                                                                                                                                                      |
| ---                                                                                                                                    | ---                                                                                                                                                                                          |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Text/Content/secondaryTextColor.colorset/Contents.json) | Defines secondary text color for dark mode in Habit-App. Facilitates cohesive visual experience across interface components. Located in Assets.xcassets to manage color schemes efficiently. |

</details>

<details closed><summary>Assets.xcassets.Text.Content.primaryTextColor.colorset</summary>

| File                                                                                                                                 | Summary                                                                                                                                                                                                                                               |
| ---                                                                                                                                  | ---                                                                                                                                                                                                                                                   |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Text/Content/primaryTextColor.colorset/Contents.json) | Defines primary and dark mode text colors for the apps content. Configured in the primaryTextColor color set within Assets.xcassets/Text/Content. Supports universal idioms and ensures consistent text legibility across different display settings. |

</details>

<details closed><summary>Assets.xcassets.Text.Content.tertiaryTextColor.colorset</summary>

| File                                                                                                                                  | Summary                                                                                                                       |
| ---                                                                                                                                   | ---                                                                                                                           |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Text/Content/tertiaryTextColor.colorset/Contents.json) | Defines tertiary text color appearance settings for dark mode in the Habit-App, enhancing visual consistency and readability. |

</details>

<details closed><summary>Assets.xcassets.Text.Link</summary>

| File                                                                                                    | Summary                                                                                               |
| ---                                                                                                     | ---                                                                                                   |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Text/Link/Contents.json) | Specifies author and version info for link text assets in the Habit-App repositorys design structure. |

</details>

<details closed><summary>Assets.xcassets.Text.Link.primaryLinkColor.colorset</summary>

| File                                                                                                                              | Summary                                                                                                                                                                       |
| ---                                                                                                                               | ---                                                                                                                                                                           |
| [Contents.json](https://github.com/xDhii/Habit-App/blob/master/Assets.xcassets/Text/Link/primaryLinkColor.colorset/Contents.json) | Defines primary and dark link colors for universal appearance with specific color components, enhancing the apps visual consistency and accessibility across different modes. |

</details>

<details closed><summary>Habit.xcodeproj</summary>

| File                                                                                              | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| ---                                                                                               | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| [project.pbxproj](https://github.com/xDhii/Habit-App/blob/master/Habit.xcodeproj/project.pbxproj) | HabitCreateViewController.swift`The `HabitCreateViewController.swift` file in the `Habit-App` repository manages the creation of new habits within the Habit App. This file encapsulates the core functionality for users to define and add new habits to their routine. By providing a user-friendly interface and intuitive interactions, this code facilitates the seamless integration of custom habits into the apps ecosystem. This component plays a crucial role in enhancing the user experience and promoting engagement with the Habit App. |

</details>

<details closed><summary>Habit.xcodeproj.xcuserdata.adrianovalumin.xcuserdatad.xcdebugger</summary>

| File                                                                                                                                                                   | Summary                                                                                                                                                 |
| ---                                                                                                                                                                    | ---                                                                                                                                                     |
| [Breakpoints_v2.xcbkptlist](https://github.com/xDhii/Habit-App/blob/master/Habit.xcodeproj/xcuserdata/adrianovalumin.xcuserdatad/xcdebugger/Breakpoints_v2.xcbkptlist) | Defines breakpoints configuration for debugging in Xcode, enhancing developer productivity and code troubleshooting within the Habit-Apps architecture. |

</details>

<details closed><summary>Habit.xcodeproj.xcuserdata.adrianovalumin.xcuserdatad.xcschemes</summary>

| File                                                                                                                                                                | Summary                                                                                                           |
| ---                                                                                                                                                                 | ---                                                                                                               |
| [xcschememanagement.plist](https://github.com/xDhii/Habit-App/blob/master/Habit.xcodeproj/xcuserdata/adrianovalumin.xcuserdatad/xcschemes/xcschememanagement.plist) | Defines scheme order within Xcode for the Habit app, aiding in project organization and build running efficiency. |

</details>

<details closed><summary>Habit.xcodeproj.project.xcworkspace</summary>

| File                                                                                                                                    | Summary                                                                                               |
| ---                                                                                                                                     | ---                                                                                                   |
| [contents.xcworkspacedata](https://github.com/xDhii/Habit-App/blob/master/Habit.xcodeproj/project.xcworkspace/contents.xcworkspacedata) | Manages workspace configuration in the Habit-App repository, enabling efficient project organization. |

</details>

<details closed><summary>Habit.xcodeproj.project.xcworkspace.xcuserdata.adrianovalumin.xcuserdatad</summary>

| File                                                                                                                                                                                  | Summary                                                                                                                                               |
| ---                                                                                                                                                                                   | ---                                                                                                                                                   |
| [IDEFindNavigatorScopes.plist](https://github.com/xDhii/Habit-App/blob/master/Habit.xcodeproj/project.xcworkspace/xcuserdata/adrianovalumin.xcuserdatad/IDEFindNavigatorScopes.plist) | Defines empty scopes for IDE Find Navigator in the projects Xcode workspace, enabling efficient navigation within the Habit-App repository structure. |

</details>

<details closed><summary>Habit.xcodeproj.project.xcworkspace.xcshareddata</summary>

| File                                                                                                                                                 | Summary                                                                                                                                                                                                     |
| ---                                                                                                                                                  | ---                                                                                                                                                                                                         |
| [IDEWorkspaceChecks.plist](https://github.com/xDhii/Habit-App/blob/master/Habit.xcodeproj/project.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist) | Facilitates project configuration by enabling Mac 32-bit warnings in Xcode workspace settings. Complements Habit-App’s architecture by enhancing development environment checks and ensuring compatibility. |

</details>

<details closed><summary>Pods.Pods.xcodeproj</summary>

| File                                                                                                  | Summary                                                                                                                                                                                                                                                                                                                                                                         |
| ---                                                                                                   | ---                                                                                                                                                                                                                                                                                                                                                                             |
| [project.pbxproj](https://github.com/xDhii/Habit-App/blob/master/Pods/Pods.xcodeproj/project.pbxproj) | This code file in the Habit-App repository is crucial for managing user authentication and session handling within the Habit app. It ensures a secure and seamless login experience for users, allowing them to access personalized features and data securely. The code enhances the overall user experience by enabling easy and reliable access to the apps functionalities. |

</details>

<details closed><summary>Pods.Pods.xcodeproj.xcuserdata.adrianovalumin.xcuserdatad.xcschemes</summary>

| File                                                                                                                                                                    | Summary                                                                                                                                                                                                                                                              |
| ---                                                                                                                                                                     | ---                                                                                                                                                                                                                                                                  |
| [Pods-Habit.xcscheme](https://github.com/xDhii/Habit-App/blob/master/Pods/Pods.xcodeproj/xcuserdata/adrianovalumin.xcuserdatad/xcschemes/Pods-Habit.xcscheme)           | Defines build actions for Pods framework in Habit apps Xcode scheme; ensures parallelization, testing, running, profiling, archiving, and analysis; sets configurations for debugging, launching, and profiling in different modes.                                  |
| [SwiftAlgorithms.xcscheme](https://github.com/xDhii/Habit-App/blob/master/Pods/Pods.xcodeproj/xcuserdata/adrianovalumin.xcuserdatad/xcschemes/SwiftAlgorithms.xcscheme) | Manages the build actions and configurations for SwiftAlgorithms framework within the Pods project, ensuring parallelized builds and support for testing, running, profiling, archiving, and analyzing. Also includes launch, profile, analyze, and archive actions. |
| [Charts.xcscheme](https://github.com/xDhii/Habit-App/blob/master/Pods/Pods.xcodeproj/xcuserdata/adrianovalumin.xcuserdatad/xcschemes/Charts.xcscheme)                   | Defines build configurations and actions for integrating and running the `Charts` framework within the Habit-App repository. Controls testing, profiling, analyzing, archiving, launching, and profiling processes.                                                  |
| [xcschememanagement.plist](https://github.com/xDhii/Habit-App/blob/master/Pods/Pods.xcodeproj/xcuserdata/adrianovalumin.xcuserdatad/xcschemes/xcschememanagement.plist) | Manages visibility and order of schemes in the Xcode project, impacting build configurations. Affects behavior for Charts, Habit, and SwiftAlgorithms schemes.                                                                                                       |

</details>

<details closed><summary>Pods.Target Support Files.SwiftAlgorithms</summary>

| File                                                                                                                                                          | Summary                                                                                                                                                                                                                                                             |
| ---                                                                                                                                                           | ---                                                                                                                                                                                                                                                                 |
| [SwiftAlgorithms-Info.plist](https://github.com/xDhii/Habit-App/blob/master/Pods/Target Support Files/SwiftAlgorithms/SwiftAlgorithms-Info.plist)             | Defines metadata for SwiftAlgorithms framework within the Habit-App repository. Specifies development region, bundle details, versioning, and package type. Facilitates proper configuration and identification of the framework within the Habit-App architecture. |
| [SwiftAlgorithms-dummy.m](https://github.com/xDhii/Habit-App/blob/master/Pods/Target Support Files/SwiftAlgorithms/SwiftAlgorithms-dummy.m)                   | Defines a dummy class for the SwiftAlgorithms library within the repositorys Pods structure to ensure proper integration and build configuration.                                                                                                                   |
| [SwiftAlgorithms.modulemap](https://github.com/xDhii/Habit-App/blob/master/Pods/Target Support Files/SwiftAlgorithms/SwiftAlgorithms.modulemap)               | Defines framework module Algorithms, exporting all contents and headers for seamless integration within the Habit-App repository's architecture.                                                                                                                    |
| [SwiftAlgorithms.debug.xcconfig](https://github.com/xDhii/Habit-App/blob/master/Pods/Target Support Files/SwiftAlgorithms/SwiftAlgorithms.debug.xcconfig)     | Sets build configurations for SwiftAlgorithms pod, ensuring proper integration within the Habit-App repositorys architecture. Manages compiler flags, search paths, and bundle identifier to enable seamless usage of Swift algorithms framework in the project.    |
| [SwiftAlgorithms-prefix.pch](https://github.com/xDhii/Habit-App/blob/master/Pods/Target Support Files/SwiftAlgorithms/SwiftAlgorithms-prefix.pch)             | Defines global imports for UIKit in SwiftAlgorithms, ensuring UIKit classes are available.                                                                                                                                                                          |
| [SwiftAlgorithms-umbrella.h](https://github.com/xDhii/Habit-App/blob/master/Pods/Target Support Files/SwiftAlgorithms/SwiftAlgorithms-umbrella.h)             | Defines version information for SwiftAlgorithms to integrate with UIKit & Foundation. Supports the seamless import of libraries across the Habit-App repository.                                                                                                    |
| [SwiftAlgorithms.release.xcconfig](https://github.com/xDhii/Habit-App/blob/master/Pods/Target Support Files/SwiftAlgorithms/SwiftAlgorithms.release.xcconfig) | Configures build settings for the SwiftAlgorithms library, enabling seamless integration within the Habit-App repositorys architecture for enhanced development and functionality.                                                                                  |

</details>

<details closed><summary>Pods.Target Support Files.Charts</summary>

| File                                                                                                                               | Summary                                                                                                                                                                                                                                                      |
| ---                                                                                                                                | ---                                                                                                                                                                                                                                                          |
| [Charts.release.xcconfig](https://github.com/xDhii/Habit-App/blob/master/Pods/Target Support Files/Charts/Charts.release.xcconfig) | Optimizes Charts integration by setting build configurations for the Charts framework. Configures search paths, preprocessor definitions, and other flags for seamless integration with SwiftAlgorithms. Standardizes build settings for the Charts library. |
| [Charts-Info.plist](https://github.com/xDhii/Habit-App/blob/master/Pods/Target Support Files/Charts/Charts-Info.plist)             | Defines key metadata for the Charts library within the Habit-App repository, specifying version number, bundle ID, and more, crucial for proper integration and identification within the iOS projects architecture.                                         |
| [Charts-umbrella.h](https://github.com/xDhii/Habit-App/blob/master/Pods/Target Support Files/Charts/Charts-umbrella.h)             | Defines version number and string for the Charts library to ensure proper integration within the Habit-App repositorys iOS project structure.                                                                                                                |
| [Charts-prefix.pch](https://github.com/xDhii/Habit-App/blob/master/Pods/Target Support Files/Charts/Charts-prefix.pch)             | Establishes UIKit import handling for the Charts dependency in the Habit-App repository to ensure compatibility and smooth integration with iOS platform components.                                                                                         |
| [Charts.modulemap](https://github.com/xDhii/Habit-App/blob/master/Pods/Target Support Files/Charts/Charts.modulemap)               | Exports all module components for the Charts framework through the umbrella header, facilitating seamless integration with other modules in the Habit-App repository architecture.                                                                           |
| [Charts-dummy.m](https://github.com/xDhii/Habit-App/blob/master/Pods/Target Support Files/Charts/Charts-dummy.m)                   | Defines a dummy Charts class for an objective-C project within the Habit-App repositorys Pods subdirectory. This file structure supports the integration and usage of the Charts library in the iOS app development environment.                             |
| [Charts.debug.xcconfig](https://github.com/xDhii/Habit-App/blob/master/Pods/Target Support Files/Charts/Charts.debug.xcconfig)     | Defines build configuration settings for integrating the Charts framework into the Habit-App repository, ensuring proper linking with SwiftAlgorithms and Algorithms frameworks, and defining essential paths and flags for the build process.               |

</details>

<details closed><summary>Pods.Target Support Files.Pods-Habit</summary>

| File                                                                                                                                                                                               | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| ---                                                                                                                                                                                                | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| [Pods-Habit.debug.xcconfig](https://github.com/xDhii/Habit-App/blob/master/Pods/Target Support Files/Pods-Habit/Pods-Habit.debug.xcconfig)                                                         | Defines build settings for embedding Swift libraries and frameworks in the Habit app. Manages search paths, preprocessor definitions, and linker flags for Charts and SwiftAlgorithms. Enhances build paths and configurations using Pods.                                                                                                                                                                                                                                                                                                                                                                        |
| [Pods-Habit-frameworks-Debug-input-files.xcfilelist](https://github.com/xDhii/Habit-App/blob/master/Pods/Target Support Files/Pods-Habit/Pods-Habit-frameworks-Debug-input-files.xcfilelist)       | Generates framework input file list for Pods-Habit to include Charts and SwiftAlgorithms. Powers Habit app's architecture within Habit-App repository by defining frameworks for debugging purposes.                                                                                                                                                                                                                                                                                                                                                                                                              |
| [Pods-Habit-frameworks-Release-input-files.xcfilelist](https://github.com/xDhii/Habit-App/blob/master/Pods/Target Support Files/Pods-Habit/Pods-Habit-frameworks-Release-input-files.xcfilelist)   | Manages dependencies for the Habit app, linking necessary frameworks for functionality like charts and algorithms.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| [Pods-Habit-Info.plist](https://github.com/xDhii/Habit-App/blob/master/Pods/Target Support Files/Pods-Habit/Pods-Habit-Info.plist)                                                                 | Defines essential metadata for the Habit apps Pods support, specifying bundle and version details.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| [Pods-Habit-acknowledgements.plist](https://github.com/xDhii/Habit-App/blob/master/Pods/Target Support Files/Pods-Habit/Pods-Habit-acknowledgements.plist)                                         | Pods/Target Support Files/Pods-Habit/Pods-Habit-acknowledgements.plist`The `Pods-Habit-acknowledgements.plist` file within the `Pods-Target Support Files` directory of the `Habit-App` repository serves as a vital resource for acknowledging third-party libraries and dependencies utilized in the Habit application. It contains a structured list detailing the attributions and licenses associated with each Pod integrated into the project. This file helps maintain transparency and compliance by providing clear acknowledgments for the external components enriching the Habit apps functionality. |
| [Pods-Habit-frameworks.sh](https://github.com/xDhii/Habit-App/blob/master/Pods/Target Support Files/Pods-Habit/Pods-Habit-frameworks.sh)                                                           | Manages installation and code-signing of vendored frameworks.-Ensures architectures compatibility for each binary.-Copies and strips vendored frameworks and dSYMs.                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| [Pods-Habit-dummy.m](https://github.com/xDhii/Habit-App/blob/master/Pods/Target Support Files/Pods-Habit/Pods-Habit-dummy.m)                                                                       | Defines a dummy module to support the Habit apps Pods integration, allowing seamless dependency management and access to external libraries.                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| [Pods-Habit.modulemap](https://github.com/xDhii/Habit-App/blob/master/Pods/Target Support Files/Pods-Habit/Pods-Habit.modulemap)                                                                   | Defines module structure for the Habit project, encapsulating functionality provided by external pods. Enables seamless integration of pod dependencies within the project's architecture, ensuring modularity and maintainability.                                                                                                                                                                                                                                                                                                                                                                               |
| [Pods-Habit-umbrella.h](https://github.com/xDhii/Habit-App/blob/master/Pods/Target Support Files/Pods-Habit/Pods-Habit-umbrella.h)                                                                 | Defines external module details for the Habit app, enabling communication with UIKit. Exports version numbers for Pods to integrate external dependencies seamlessly within the repository structure.                                                                                                                                                                                                                                                                                                                                                                                                             |
| [Pods-Habit-acknowledgements.markdown](https://github.com/xDhii/Habit-App/blob/master/Pods/Target Support Files/Pods-Habit/Pods-Habit-acknowledgements.markdown)                                   | Pods-Habit-acknowledgements.markdown`This file in the `Pods-Habit` directory acknowledges the third-party libraries used in the Habit-App project, with a specific mention of the `Charts` library. It highlights the importance of these external resources and their licenses, ensuring transparency and compliance within the applications architecture.                                                                                                                                                                                                                                                       |
| [Pods-Habit.release.xcconfig](https://github.com/xDhii/Habit-App/blob/master/Pods/Target Support Files/Pods-Habit/Pods-Habit.release.xcconfig)                                                     | Manages Swift libraries integration and build settings in Pods-Habit project for seamless use of Algorithms and Charts frameworks. Ensures proper Swift standard libraries embedding and framework paths configuration in the repositorys architecture.                                                                                                                                                                                                                                                                                                                                                           |
| [Pods-Habit-frameworks-Release-output-files.xcfilelist](https://github.com/xDhii/Habit-App/blob/master/Pods/Target Support Files/Pods-Habit/Pods-Habit-frameworks-Release-output-files.xcfilelist) | Specifies output framework paths for Pods-Habit project build, referencing Charts and Algorithms frameworks.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| [Pods-Habit-frameworks-Debug-output-files.xcfilelist](https://github.com/xDhii/Habit-App/blob/master/Pods/Target Support Files/Pods-Habit/Pods-Habit-frameworks-Debug-output-files.xcfilelist)     | Specifies build paths for external frameworks in the Habit-App repository architecture, ensuring correct integration of Charts and Algorithms frameworks for debugging purposes.                                                                                                                                                                                                                                                                                                                                                                                                                                  |

</details>

<details closed><summary>Pods.SwiftAlgorithms</summary>

| File                                                                                           | Summary                                                                                                                                                                                                                                                                              |
| ---                                                                                            | ---                                                                                                                                                                                                                                                                                  |
| [LICENSE.txt](https://github.com/xDhii/Habit-App/blob/master/Pods/SwiftAlgorithms/LICENSE.txt) | Enables redistribution of derivative works under the Apache 2.0 License within the SwiftAlgorithms library, granting users the freedom to reproduce, adapt, and distribute the work without requiring attribution in certain cases, as outlined in the license terms and conditions. |

</details>

<details closed><summary>Pods.SwiftAlgorithms.Sources.Algorithms</summary>

| File                                                                                                                                      | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| ---                                                                                                                                       | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| [FlattenCollection.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/SwiftAlgorithms/Sources/Algorithms/FlattenCollection.swift) | Enables concatenating elements in collections within collections for seamless iteration, ensuring efficient navigation through a multi-layered dataset structure.                                                                                                                                                                                                                                                                                                                                                                                  |
| [Chunked.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/SwiftAlgorithms/Sources/Algorithms/Chunked.swift)                     | SummaryThis code file within the Habit-App repository focuses on managing various aspects of a habit-tracking application, including features like user authentication, habit creation, visualization, and profile management. It contributes to the overall architecture by providing structured components for different sections of the app, such as Habit Detail, Home, Profile, and Sign-In functionalities. Its primary aim is to enhance the user experience by offering a seamless interface for tracking and managing habits effectively. |
| [Split.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/SwiftAlgorithms/Sources/Algorithms/Split.swift)                         | This code file in the Habit-App repository is a critical component responsible for managing and displaying habit-related information within the iOS application. It plays a key role in the Habit modules architecture, contributing to features such as creating new habits, viewing habit details, and visualizing habit data through charts. This code file helps users interact with their habits seamlessly, enhancing their experience within the app.                                                                                       |
| [Trim.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/SwiftAlgorithms/Sources/Algorithms/Trim.swift)                           | Implements collection trimming methods based on predicate conditions for removing elements. Enhances collection manipulation flexibility and performance by enabling efficient prefix and suffix trimming.                                                                                                                                                                                                                                                                                                                                         |
| [Permutations.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/SwiftAlgorithms/Sources/Algorithms/Permutations.swift)           | This code file in the parent repository **Habit-App** is focused on managing user authentication functionalities within the Habit application. It handles user sign-in and sign-up processes, ensuring secure access to the apps features. By encapsulating these vital operations, it enhances the overall user experience and strengthens the apps security measures.                                                                                                                                                                            |
| [Unique.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/SwiftAlgorithms/Sources/Algorithms/Unique.swift)                       | Defines a sequence wrapper removing duplicate elements, offering methods to return unique elements within a sequence based on a projection, ensuring preservation of element order. Complements the repositorys architecture by enhancing sequence manipulation capabilities.                                                                                                                                                                                                                                                                      |
| [Chain.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/SwiftAlgorithms/Sources/Algorithms/Chain.swift)                         | Chains two sequences into a single sequence with matching element types. Provides iterators and collection functionalities for the concatenated sequences. Allows seamless iteration over elements of both sequences.                                                                                                                                                                                                                                                                                                                              |
| [Indexed.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/SwiftAlgorithms/Sources/Algorithms/Indexed.swift)                     | Introduces IndexedCollection to iterate over collection indices and elements together, extending collection functionalities. Implements indexed() method returning paired indices and elements. Enhances the parent repository's architecture by providing a versatile utility for indexed collection operations.                                                                                                                                                                                                                                  |
| [MinMax.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/SwiftAlgorithms/Sources/Algorithms/MinMax.swift)                       | This code file within the Habit-App repository is instrumental in managing user authentication processes, including sign-in and sign-up functionalities. It plays a crucial role in ensuring a seamless onboarding experience for users interacting with the Habit-App platform. Its implementation aligns with the broader architecture of the repository, focusing on user engagement and account management within the Habit ecosystem.                                                                                                         |
| [FirstNonNil.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/SwiftAlgorithms/Sources/Algorithms/FirstNonNil.swift)             | Enables swift sequences to find the first non-nil result by applying a transformation. The function aids in processing sequence elements efficiently and elegantly within the Habit-Apps Swift Algorithms module.                                                                                                                                                                                                                                                                                                                                  |
| [Compacted.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/SwiftAlgorithms/Sources/Algorithms/Compacted.swift)                 | Iterates over non-nil elements from a `Sequence` or `Collection`.-Provides new `compacted()` methods to filter out nil values.-Enhances unwrapping and iteration efficiency in the Swift Algorithms repository architecture.                                                                                                                                                                                                                                                                                                                       |
| [Intersperse.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/SwiftAlgorithms/Sources/Algorithms/Intersperse.swift)             | The code file `HabitApp.swift` in the `Habit-App` repository serves as the entry point for the Habit application. It orchestrates the navigation flow between different modules such as Habit creation, detail viewing, and user profile management. The main purpose of this file is to initialize the Habit app and configure the initial setup for a seamless user experience.                                                                                                                                                                  |
| [Cycle.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/SwiftAlgorithms/Sources/Algorithms/Cycle.swift)                         | Implements a sequence of repeating elements, providing infinite and finite cycling capabilities for collections. Enables seamless integration with various Swift Algorithms to create endless or limited cycles of elements for efficient processing and iteration within the Habit-App repository architecture.                                                                                                                                                                                                                                   |
| [Suffix.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/SwiftAlgorithms/Sources/Algorithms/Suffix.swift)                       | Defines extensions for BidirectionalCollection and Collection types to obtain subsequence elements based on custom predicates, enabling efficient processing.                                                                                                                                                                                                                                                                                                                                                                                      |
| [Combinations.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/SwiftAlgorithms/Sources/Algorithms/Combinations.swift)           | Generates combinations of elements from a collection based on specified sizes. Provides insights into combinations of elements, aiding in flexible data manipulation. Streamlines the process of deriving unique combinations within a collection.                                                                                                                                                                                                                                                                                                 |
| [Rotate.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/SwiftAlgorithms/Sources/Algorithms/Rotate.swift)                       | Method `reverse` swaps elements in a collections subrange. `rotate` moves elements to a specific index. Both methods efficiently handle collection rotation and reversal, optimizing their performance in the Habit-App repositorys structure.                                                                                                                                                                                                                                                                                                     |
| [EitherSequence.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/SwiftAlgorithms/Sources/Algorithms/EitherSequence.swift)       | Defines `Either` and `EitherSequence` types with Equatable, Comparable, Collection, BidirectionalCollection, and RandomAccessCollection conformance for creating and working with sum types and sequences of two specified types in the Habit-App repositorys Swift Algorithms component.                                                                                                                                                                                                                                                          |
| [AdjacentPairs.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/SwiftAlgorithms/Sources/Algorithms/AdjacentPairs.swift)         | Generates adjacent pairs from sequences and collections, aiding iteration over neighboring elements. Enhances traversing functionality for Habit-Apps feature modules, enabling seamless manipulation of adjacent pairs in Swift Algorithms.                                                                                                                                                                                                                                                                                                       |
| [Partition.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/SwiftAlgorithms/Sources/Algorithms/Partition.swift)                 | Enables stable and non-stable partitioning of mutable collections. Supports moving elements based on given predicates while maintaining relative order. Enhances collection partitioning efficiency in the Habit-App repositorys architecture.                                                                                                                                                                                                                                                                                                     |
| [Product.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/SwiftAlgorithms/Sources/Algorithms/Product.swift)                     | This code file in the Habit-App repository is responsible for managing user authentication and registration processes within the Habit app. It facilitates user sign-up and sign-in functionalities, ensuring a seamless experience for users accessing the platform. This component plays a crucial role in enabling users to create accounts, log in securely, and access personalized features and data within the Habit app ecosystem.                                                                                                         |
| [Reductions.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/SwiftAlgorithms/Sources/Algorithms/Reductions.swift)               | This code file in the Habit-App repository plays a crucial role in managing and displaying charts related to habit tracking. It enhances the user experience by visually representing data in a clear and insightful manner within the Habit section of the app. By utilizing this code, users can easily track and analyze their progress, fostering motivation and accountability towards their goals.                                                                                                                                           |
| [Joined.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/SwiftAlgorithms/Sources/Algorithms/Joined.swift)                       | Analyzes and concatenates sequences/collections with customizable separators for efficient data handling and manipulation within the Habit-App repository structure.                                                                                                                                                                                                                                                                                                                                                                               |
| [Windows.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/SwiftAlgorithms/Sources/Algorithms/Windows.swift)                     | Implements a sliding window view over a collection, enabling iteration over overlapping subsequences. Allows easy access to slices of a specified size. Enhances iteration efficiency for collections supporting random access.                                                                                                                                                                                                                                                                                                                    |
| [Stride.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/SwiftAlgorithms/Sources/Algorithms/Stride.swift)                       | Enables efficient striding through sequences and collections by stepping through elements with a specified amount. These extensions and types support seamless traversal operations within the architecture of the open-source Swift Algorithms project.                                                                                                                                                                                                                                                                                           |

</details>

<details closed><summary>Pods.Charts.Source.Charts.Filters</summary>

| File                                                                                                                                  | Summary                                                                                                                                                                                                                                   |
| ---                                                                                                                                   | ---                                                                                                                                                                                                                                       |
| [DataApproximator.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Filters/DataApproximator.swift)     | Implements data approximation using the Douglas Peuker algorithm to reduce arrays of points with a specified tolerance. Allows reducing complex data structures while maintaining important points for efficient visualization in charts. |
| [DataApproximator+N.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Filters/DataApproximator+N.swift) | Implements a data reduction algorithm in Charts repository. The code reduces points to a specified count using the Douglas Peuker algorithm, optimizing display while maintaining shape accuracy.                                         |

</details>

<details closed><summary>Pods.Charts.Source.Charts.Renderers</summary>

| File                                                                                                                                                                    | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| ---                                                                                                                                                                     | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| [RadarChartRenderer.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/RadarChartRenderer.swift)                                 | Renders radar chart data with accessibility support-Updates accessible elements for chart narration-Draws radar data sets and values with labels-Highlights and draws circles on radar chart datapoints                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| [LegendRenderer.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/LegendRenderer.swift)                                         | Defines LegendRenderer to compute and render legend entries based on data.-Manages legend forms, labels, colors, and positioning.-Supports various chart types with stacking and orientation considerations.-Utilizes CoreGraphics for drawing forms and labels.                                                                                                                                                                                                                                                                                                                                                                                            |
| [YAxisRendererHorizontalBarChart.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/YAxisRendererHorizontalBarChart.swift)       | Defines and computes Y-axis values, renders axis labels and lines, draws grid lines, zero lines, and limit lines for the horizontal bar chart in the Habit-App repositorys Charts module.                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| [BubbleChartRenderer.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/BubbleChartRenderer.swift)                               | Implements Bubble Chart rendering with accessibility elements. Draws bubble data sets, values, and highlights, delivering an interactive charting experience for BubbleChartView.                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| [LineChartRenderer.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/LineChartRenderer.swift)                                   | LineChartRenderer.swift SummaryThis file, part of the **Charts** module within the **Habit-App** repository, contributes to visualizing data through line charts in the habit tracking application. The **LineChartRenderer** class encapsulates rendering logic for displaying dynamic trends and patterns of user habits. By leveraging this renderer, the application enhances user experience with insightful graphical representations, encouraging progress tracking and goal setting within the Habit-App ecosystem.                                                                                                                                 |
| [YAxisRenderer.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/YAxisRenderer.swift)                                           | Renders y-axis labels, lines, grid lines, and limit lines for the Charts module in the Habit-App repository. Computes and draws axis values with specified granularity and label count. Enhances visualization and data presentation in the repositorys architecture.                                                                                                                                                                                                                                                                                                                                                                                       |
| [ScatterChartRenderer.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/ScatterChartRenderer.swift)                             | Illustrates rendering features for Scatter Charts with accessible elements, shape rendering, value representation, and highlighting capabilities. Optimizes data visibility and interaction for Scatter Chart visualization in the Habit-App repository.                                                                                                                                                                                                                                                                                                                                                                                                    |
| [CombinedChartRenderer.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/CombinedChartRenderer.swift)                           | Defines the CombinedChartRenderer to manage rendering multiple chart types in a CombinedChartView. Creates renderers for bar, line, candlestick, scatter, and bubble charts. Enables drawing values above bars and shadows.                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| [CandleStickChartRenderer.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/CandleStickChartRenderer.swift)                     | Illustrates rendering of CandleStick chart elements, including shadows, bars, values. Enhances accessibility by describing chart elements for users. Executes drawing functions based on data availability and provided configurations.                                                                                                                                                                                                                                                                                                                                                                                                                     |
| [BarChartRenderer.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/BarChartRenderer.swift)                                     | This `BarChartRenderer.swift` file within the `Charts` module of the `Habit-App` repository provides essential rendering functionalities for bar chart visualization within the iOS application. It contributes to the repositorys architecture by enabling the creation and display of visually appealing bar charts to enhance user experience and data presentation.                                                                                                                                                                                                                                                                                     |
| [XAxisRenderer.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/XAxisRenderer.swift)                                           | XAxisRenderer.swift OverviewThe `XAxisRenderer.swift` file in the Charts module of the Habit-App repository is responsible for rendering the X-axis in various chart components. This crucial component ensures the accurate display of data along the horizontal axis in different chart types throughout the Habit-App. By managing the visual representation of the X-axis, this file plays a key role in enhancing the users understanding of their habit-related data within the app's charting functionality.                                                                                                                                         |
| [LineRadarRenderer.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/LineRadarRenderer.swift)                                   | Enhances Charts rendering in Habit-App with LineRadarChartRenderer. Draws filled paths with color and alpha, improving data visualization for radar and line charts. Maintains visual consistency and enhances user experience within the apps Habit module.                                                                                                                                                                                                                                                                                                                                                                                                |
| [BarLineScatterCandleBubbleRenderer.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/BarLineScatterCandleBubbleRenderer.swift) | Defines rendering logic for charts, managing visibility, and drawing data. Determines whether values should be drawn and calculates x-bounds for datasets. Also provides accessible header creation functionality.                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| [XAxisRendererHorizontalBarChart.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/XAxisRendererHorizontalBarChart.swift)       | Defines X-axis rendering for a horizontal bar chart.-Computes axis values and size for labels.-Renders axis labels, grid lines, and limit lines.-Manages label positioning and styling.                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| [HorizontalBarChartRenderer.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/HorizontalBarChartRenderer.swift)                 | The `HorizontalBarChartRenderer.swift` file in the `Charts` module of the Habit-App repository is responsible for rendering horizontal bar charts within the iOS application. This renderer extends the functionality of the parent BarChartRenderer class to specifically handle horizontal bar chart visualization. By defining a Buffer class to manage rectangles, this renderer facilitates the creation and display of horizontal bar chart data in the Habit-App projects charting feature set. The implementation adheres to the Apache License 2.0 and is maintained as part of the open-source Charts library utilized in the Habit-App codebase. |
| [XAxisRendererRadarChart.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/XAxisRendererRadarChart.swift)                       | Illustrates rendering of X-axis labels for a Radar Chart in the Habit-App repository. Inherits functionality from the parent class, customizes label appearance, calculates label positions based on chart properties, and renders labels accordingly.                                                                                                                                                                                                                                                                                                                                                                                                      |
| [AxisRenderer.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/AxisRenderer.swift)                                             | Defines rendering methods for axis labels, grid lines, axis line, and limit lines. Computes and sets up axis values based on minimum and maximum data values. Implements a transformer to convert values to screen pixels within the Charts framework for iOS.                                                                                                                                                                                                                                                                                                                                                                                              |
| [DataRenderer.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/DataRenderer.swift)                                             | Defines chart rendering behavior for accessibility elements, values, and highlights. Manages rendering buffers, data sets, and chart descriptions. Supports animation and element initialization. Enhances user experience for visually impaired users through audio interfaces.                                                                                                                                                                                                                                                                                                                                                                            |
| [YAxisRendererRadarChart.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/YAxisRendererRadarChart.swift)                       | Computes values, forces label count, sets decimals, and renders labels and limit lines. Supports customization for displaying data in a Radar Chart in the Habit-App repository.                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| [PieChartRenderer.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/PieChartRenderer.swift)                                     | The `PieChartRenderer.swift` file within the `Charts` module of the `Habit-App` repository serves the critical function of rendering visually appealing and interactive pie charts for habit tracking and visualization purposes. This component enhances the user experience by providing intuitive graphical representations of data within the Habit App, supporting users in monitoring their progress and achievements.                                                                                                                                                                                                                                |
| [Renderer.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/Renderer.swift)                                                     | Manages rendering operations for the chart by defining the view port handler.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| [LineScatterCandleRadarRenderer.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/LineScatterCandleRadarRenderer.swift)         | Renders highlight lines on radar charts for vertical and horizontal indicators based on data set settings.-Part of the Charts module, supporting vertical and horizontal line drawing functionalities for visual data representation in the Habit-App repository.                                                                                                                                                                                                                                                                                                                                                                                           |

</details>

<details closed><summary>Pods.Charts.Source.Charts.Renderers.Scatter</summary>

| File                                                                                                                                                        | Summary                                                                                                                                                                                                                                                                           |
| ---                                                                                                                                                         | ---                                                                                                                                                                                                                                                                               |
| [XShapeRenderer.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/Scatter/XShapeRenderer.swift)                     | Implements X-shape rendering for Scatter Charts in the Habit-App repositorys Charts module. Renders shapes on a chart canvas based on data points, enhancing visualization for Habit App users.                                                                                   |
| [SquareShapeRenderer.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/Scatter/SquareShapeRenderer.swift)           | Defines a SquareShapeRenderer class to render scatter plot shapes with various configurations like size, color, and stroke. Carries out the rendering process based on the provided data set and context in a Chart library for iOS.                                              |
| [ShapeRenderer.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/Scatter/ShapeRenderer.swift)                       | Renders ScatterDataSet shapes with provided color.-Utilizes CGContext for drawing.-Interfaces with ScatterChartDataSetProtocol and ViewPortHandler for context.-Located in Pods/Charts/Source/Charts/Renderers/Scatter/ShapeRenderer.swift in the Habit-App repository structure. |
| [ChevronDownShapeRenderer.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/Scatter/ChevronDownShapeRenderer.swift) | Illustrates rendering functionality for Scatter Chart dataset points, enhancing visual representation in iOS apps Habit module. Shapes drawn dynamically based on data, contributing to user engagement and data visualization.                                                   |
| [CircleShapeRenderer.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/Scatter/CircleShapeRenderer.swift)           | Defines a CircleShapeRenderer class that customizes scatter plot shapes in the Habit-App Charts module. Renders circles based on data set properties like size, color, and stroke. Enhances visual representation of data points on the scatter chart.                            |
| [CrossShapeRenderer.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/Scatter/CrossShapeRenderer.swift)             | Implements rendering cross-shaped markers for scatter charts, enhancing visualization of data points. Responsible for drawing on a chart using specified attributes.                                                                                                              |
| [TriangleShapeRenderer.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/Scatter/TriangleShapeRenderer.swift)       | Illustrates rendering triangular shapes with color and optional holes in scatter plots via a specialized rendering class. Enhances visualization and customization options for charting functionalities within the Habit-App repositorys broader architecture.                    |
| [ChevronUpShapeRenderer.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Renderers/Scatter/ChevronUpShapeRenderer.swift)     | Defines ChevronUpShapeRenderer to render a custom shape in scatter charts. Implements renderShape() to draw an upwards-pointing chevron centered on a point in the context, using provided color and size parameters.                                                             |

</details>

<details closed><summary>Pods.Charts.Source.Charts.Highlight</summary>

| File                                                                                                                                                | Summary                                                                                                                                                                                                                                                                  |
| ---                                                                                                                                                 | ---                                                                                                                                                                                                                                                                      |
| [BarHighlighter.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Highlight/BarHighlighter.swift)                     | Defines BarHighlighter class, extending ChartHighlighter to provide a method for generating highlights in a stacked bar chart. Resolves selected values and stack indices with precision for displaying information accurately on the bar chart.                         |
| [RadarHighlighter.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Highlight/RadarHighlighter.swift)                 | Generates radar chart highlights based on x, y positioning. Determines closest highlight to center, providing value and dataset info. Key feature in the repositorys Habit-App Charts module for visualizing habit data on iOS using the Apache-licensed Charts library. |
| [Highlight.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Highlight/Highlight.swift)                               | Defines a Highlight class with properties for x, y values, and associated data. Offers methods to set the position where the highlight was last drawn. Implements Equatable to compare highlight objects based on key properties.                                        |
| [PieHighlighter.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Highlight/PieHighlighter.swift)                     | Implements PieHighlighter in the Charts module for Habit-App. Determines the closest highlight on a pie chart based on user interaction.                                                                                                                                 |
| [HorizontalBarHighlighter.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Highlight/HorizontalBarHighlighter.swift) | Implements horizontal bar chart highlighting based on user touch, ensuring compatibility with stacked data sets and accurate data point selection, enhancing user interaction within the Habit-App repositorys chart visualization features.                             |
| [PieRadarHighlighter.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Highlight/PieRadarHighlighter.swift)           | Implements PieRadarHighlighter in the Charts module for highlighting slices based on touch input within the PieRadarChartViewBase. Calculates the index of the highlighted slice and returns the corresponding Highlight object.                                         |
| [Range.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Highlight/Range.swift)                                       | Defines a Range class in the Charts module for checking if a value falls within a specified range, aiding in data visualization and chart functionalities.                                                                                                               |
| [ChartHighlighter.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Highlight/ChartHighlighter.swift)                 | Determines closest chart values based on user touch input.-Calculates x-axis position for touch.-Selects chart highlight based on touch location.-Extracts highlights per dataset for a given x-value.                                                                   |
| [CombinedHighlighter.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Highlight/CombinedHighlighter.swift)           | Defines and implements a CombinedHighlighter class to handle highlighting for bar and other chart data in the Habit-App repositorys Charts module. It supports stacked highlighting, utilizing a BarHighlighter for BarData sets.                                        |
| [Highlighter.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Highlight/Highlighter.swift)                           | Defines a protocol for generating a highlight object based on touch coordinates, essential for the interactive charting functionality in the Habit-App repositorys Charts module.                                                                                        |

</details>

<details closed><summary>Pods.Charts.Source.Charts.Charts</summary>

| File                                                                                                                                         | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| ---                                                                                                                                          | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| [CandleStickChartView.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Charts/CandleStickChartView.swift)     | Defines a financial chart type for candle-stick visualization within the Habit-App project. Inherits functionality from the parent class and initializes specific attributes for visual representation. Designed to work with candle-stick data for financial analysis.                                                                                                                                                                                                                                                                                                                                                       |
| [RadarChartView.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Charts/RadarChartView.swift)                 | Implements RadarChart display with configurable web lines and colors for Habit-Apps visualization feature. RadarChartView enhances user insights through interactive spider-net visuals, with emphasis on data hierarchy presentation.                                                                                                                                                                                                                                                                                                                                                                                        |
| [BarLineChartViewBase.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Charts/BarLineChartViewBase.swift)     | BarLineChartViewBase.swift`The `BarLineChartViewBase.swift` file within the `Charts` module of the `Habit-App` repository contributes to the visualization aspects of the application. This file is essential in providing a foundational structure for rendering bar and line charts within the habit tracking and visualization feature set of the app. By leveraging this code, the application gains the ability to display data trends and patterns effectively, aiding users in analyzing their habits through intuitive visual representations.                                                                        |
| [LineChartView.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Charts/LineChartView.swift)                   | Implements LineChartView within Charts for iOS Habit-App. Draws lines, surfaces, circles. Inherits BarLineChartViewBase. Initializes renderer and provides LineChartDataProvider with lineData property. Maintains compatibility with MPAndroidChart.                                                                                                                                                                                                                                                                                                                                                                         |
| [CombinedChartView.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Charts/CombinedChartView.swift)           | Implements CombinedChartView for combining line, bar, scatter, and candle data in a single chart area. Manages drawing order, highlights, bar shadows, and value positioning. Enables full-bar oriented highlighting and marker drawing.                                                                                                                                                                                                                                                                                                                                                                                      |
| [HorizontalBarChartView.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Charts/HorizontalBarChartView.swift) | Defines HorizontalBarChart presentation in Habit-App with switched axes. Renders legend, axis, and marker positioning. Manages visible x and y ranges dynamically for fluid chart display on the mobile app.                                                                                                                                                                                                                                                                                                                                                                                                                  |
| [ChartViewBase.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Charts/ChartViewBase.swift)                   | ChartViewBase.swift SummaryThe `ChartViewBase.swift` file located within the `Charts` module of the `Habit-App` repository provides fundamental functionality for various types of charts used within the app. It serves as a base class for rendering interactive and visually appealing charts, enabling seamless data visualization across different sections like Habit, HabitCreate, HabitDetail, and Home. This critical component ensures a consistent and user-friendly charting experience throughout the application, enhancing the overall usability and engagement for users interacting with habit-related data. |
| [BubbleChartView.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Charts/BubbleChartView.swift)               | Implements Bubble Chart feature for Habit-App. Inherits chart base functionalities, initializes renderer, and provides bubble data. Crucial for visualizing bubble chart data in the apps Habit module.                                                                                                                                                                                                                                                                                                                                                                                                                       |
| [PieRadarChartViewBase.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Charts/PieRadarChartViewBase.swift)   | The `PieRadarChartViewBase.swift` file in the `Charts` module of the `Habit-App` repository serves as a foundational component for rendering pie and radar chart views within the habit-tracking application. It encapsulates essential logic for managing and displaying these types of charts, contributing to the visual representation of users habit data and progress. This file plays a crucial role in enhancing the user experience by providing insightful visualizations through pie and radar charts, thus enriching the overall functionality of the Habit-App.                                                  |
| [BarChartView.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Charts/BarChartView.swift)                     | Defines BarChartView component in the Habit-App repository for drawing bars with customizable options like value position and shadows. Supports bar grouping, value highlighting, and bar width adjustments for precise data visualization.                                                                                                                                                                                                                                                                                                                                                                                   |
| [ScatterChartView.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Charts/ScatterChartView.swift)             | Implements ScatterChart visualization in Habit-App Charts submodule, enhancing data presentation. Inherits from a base class, setting specific chart configurations for data display. Contributed to the ScatterChartDataProvider protocol for data handling.                                                                                                                                                                                                                                                                                                                                                                 |
| [PieChartView.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Charts/PieChartView.swift)                     | This code file within the `Pods/` directory enhances the Habit-App repository by integrating essential third-party dependencies such as `Charts` and `SwiftAlgorithms`. These libraries provide advanced charting capabilities and efficient algorithm implementations respectively, enriching the Habit-App with enhanced functionality and performance.                                                                                                                                                                                                                                                                     |

</details>

<details closed><summary>Pods.Charts.Source.Charts.Animation</summary>

| File                                                                                                                                        | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| ---                                                                                                                                         | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| [ChartAnimationEasing.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Animation/ChartAnimationEasing.swift) | HabitListViewController.swift`The `HabitListViewController.swift` file in the `Habit-App` repository plays a vital role in displaying a users list of habits within the Habit application. This code file is responsible for managing the user interface elements and interactions related to viewing and interacting with the habits list feature. Key functionalities include presenting habit information in a structured manner and providing users with options for managing their habits efficiently. It integrates seamlessly with other components in the `Habit` module, contributing to a cohesive user experience within the Habit application. |
| [Animator.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Animation/Animator.swift)                         | Defines animation logic for charts with customizable easing functions. Manages x and y axis phases, durations, and updates. Enables smooth rendering of data on iOS charts. Key for interactive visualizations in the Habit-App repository.                                                                                                                                                                                                                                                                                                                                                                                                                |

</details>

<details closed><summary>Pods.Charts.Source.Charts.Formatters</summary>

| File                                                                                                                                                   | Summary                                                                                                                                                                                                                                                                          |
| ---                                                                                                                                                    | ---                                                                                                                                                                                                                                                                              |
| [DefaultFillFormatter.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Formatters/DefaultFillFormatter.swift)           | Calculates position of filled line in charts. Utilizes custom block for position calculations. Handles edge cases for positive and negative y-values. Essential for accurate chart visualization in Habit-App.                                                                   |
| [AxisValueFormatter.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Formatters/AxisValueFormatter.swift)               | Defines an interface for custom axis value formatting in the Chart library. Allows customization of labels drawn on the x-axis, enhancing the visual representation of data in the Habit-App parent repositorys chart components.                                                |
| [DefaultValueFormatter.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Formatters/DefaultValueFormatter.swift)         | Defines a default value formatter with customizable format behavior for all chart components in the Habit-App repositorys Charts module, supporting various data entry and visualization requirements.                                                                           |
| [DefaultAxisValueFormatter.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Formatters/DefaultAxisValueFormatter.swift) | Defines a flexible DefaultAxisValueFormatter in the Charts module, enabling custom axis value formatting using blocks, number of decimals, or predefined formatters. Enhances visualization in the apps Habit module for tracking personal progress efficiently and effectively. |
| [ValueFormatter.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Formatters/ValueFormatter.swift)                       | Defines a protocol for customizing value formatting in iOS chart visuals, enhancing data presentation in the Habit-App project.                                                                                                                                                  |
| [IndexAxisValueFormatter.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Formatters/IndexAxisValueFormatter.swift)     | Defines an index axis value formatter class within the Charts module. It enables passing x-axis label arrays in whole x steps, aiding chart data presentation in the Habit-App repository structure.                                                                             |
| [FillFormatter.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Formatters/FillFormatter.swift)                         | Defines a protocol to determine where a LineDataSets filling line should end on a LineChart. Helps in customizing fill logic when setFillEnabled(true). Key for the Chart module in the Habit-App repository.                                                                    |

</details>

<details closed><summary>Pods.Charts.Source.Charts.Utils</summary>

| File                                                                                                                                                      | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| ---                                                                                                                                                       | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| [Fill.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Utils/Fill.swift)                                                   | Empty, Color, Image, Layer, Linear Gradient, and Radial Gradient fills. These classes implement functions to draw fills on provided paths, contributing to visual data representation within the Habit-App repositorys charting components.                                                                                                                                                                                                                                                                                                             |
| [Transformer.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Utils/Transformer.swift)                                     | Defines a class managing value-to-pixel transformations in a Chart library. Implements methods to prepare matrices for transforming values and pixels, enabling chart data visualization in iOS.                                                                                                                                                                                                                                                                                                                                                        |
| [Platform+Touch Handling.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Utils/Platform+Touch Handling.swift)             | Enhances touch handling in Charts for iOS and macOS. Maps touch events to respective platforms touch systems, ensuring consistent touch behavior across different platforms.                                                                                                                                                                                                                                                                                                                                                                            |
| [ViewPortHandler.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Utils/ViewPortHandler.swift)                             | The `HabitDetail` module in the Habit-App repository plays a crucial role in displaying detailed information and insights about individual habits. This code file enhances the user experience by providing a comprehensive view of a specific habit, allowing users to track their progress effectively. By focusing on detailed habit data presentation, the `HabitDetail` module complements the overall architecture of the repository, enriching the Habit-App ecosystem with valuable features for users to engage with their habits more deeply. |
| [Platform+Gestures.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Utils/Platform+Gestures.swift)                         | Enhances gesture handling in macOS and iOS apps by providing consistent APIs for tap, pan, rotation, and pinch gestures. Simplifies gesture interactions across platforms within the parent Habit-App repositorys architecture.                                                                                                                                                                                                                                                                                                                         |
| [Sequence+KeyPath.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Utils/Sequence+KeyPath.swift)                           | Implements a utility in Charts for finding the max element in a sequence based on a keypath and an optional custom comparison function, offering flexibility in sorting data within the parent Habit-App architecture.                                                                                                                                                                                                                                                                                                                                  |
| [Platform+Graphics.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Utils/Platform+Graphics.swift)                         | Implements platform-specific graphics utility functions for UIKit and AppKit in the Charts module. Determines orientation based on CGSize and CGRect dimensions. Facilitates context manipulation and image generation for iOS and macOS environments within the Habit-App repository structure.                                                                                                                                                                                                                                                        |
| [Platform+Accessibility.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Utils/Platform+Accessibility.swift)               | Implements accessibility notifications and elements for iOS and macOS platforms, enhancing chart view accessibility and interaction within the Habit-App repositorys architecture.                                                                                                                                                                                                                                                                                                                                                                      |
| [Platform.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Utils/Platform.swift)                                           | Abstract platform-specific APIs for iOS and macOS, harmonizing UIKit and Cocoa frameworks for effortless chart library integration. Simplifies NSUI type aliases, core functionality, and display link management across operating systems.                                                                                                                                                                                                                                                                                                             |
| [ChartColorTemplates.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Utils/ChartColorTemplates.swift)                     | Defines multiple color themes and conversion methods in the Charts subsystem, enhancing visual presentations in the Habit-App ecosystem. This assists in maintaining cohesive design aesthetics and dynamic data visualization across various elements.                                                                                                                                                                                                                                                                                                 |
| [TransformerHorizontalBarChart.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Utils/TransformerHorizontalBarChart.swift) | Transforms horizontal bar chart matrix offsets based on viewport, enhancing chart display in Habit-App.                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| [Platform+Color.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Utils/Platform+Color.swift)                               | Defines platform-specific label color for a charts library to adapt to different color schemes seamlessly. Utilizes UIKit and AppKit for iOS/macOS compatibility, ensuring consistent visuals across platforms.                                                                                                                                                                                                                                                                                                                                         |
| [ChartUtils.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Utils/ChartUtils.swift)                                       | Enhances rendering capabilities. Extends types like Comparable, FloatingPoint, CGSize, Double, CGPoint, and CGContext to facilitate angle normalization, size rotation, text alignment, and image/text drawing functions. The contributions benefit the visual representation within the Habit-App repositorys UI components.                                                                                                                                                                                                                           |

</details>

<details closed><summary>Pods.Charts.Source.Charts.Components</summary>

| File                                                                                                                             | Summary                                                                                                                                                                                                                                                                                                |
| ---                                                                                                                              | ---                                                                                                                                                                                                                                                                                                    |
| [Description.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Components/Description.swift)       | Text, position, alignment, font, and color. Adapts font size based on platform, ensuring legibility. Supports customization of chart descriptions in the Habit-App repositorys Charts module.                                                                                                          |
| [MarkerImage.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Components/MarkerImage.swift)       | Implements a custom marker image for chart rendering, allowing offset adjustments and content refresh. Dynamically resizes image, ensuring visibility within chart bounds. Works seamlessly in the Habit-Apps Charts submodule.                                                                        |
| [Legend.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Components/Legend.swift)                 | Defines customizable legend components for a chart. Manages entries, alignment, orientation, form, size, and layout calculations for labels. Supports custom entries and automatic legend generation. Can reset custom entries for automatic calculation.                                              |
| [LegendEntry.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Components/LegendEntry.swift)       | Defines a LegendEntry object with label, color, form type, size, line width, dash phase, dash lengths, and color properties for customizing legend entries in the Charts feature of the Habit-App repository.                                                                                          |
| [YAxis.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Components/YAxis.swift)                   | Implements y-axis features for data visualization, including label customization and position settings. Manages axis dependencies, label alignment, and space configurations for robust chart displays within the Habit-App repositorys architecture.                                                  |
| [AxisBase.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Components/AxisBase.swift)             | Defines customizable axis properties like label font, color, and grid lines for charting. Enables centered axis labels and limit lines. Calculates axis min and max values based on chart data, with customizability.                                                                                  |
| [XAxis.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Components/XAxis.swift)                   | Width, height, rotation, clipping, position, word wrapping, and avoidance. Implements label calculations and customization for iOS charting library component.                                                                                                                                         |
| [ChartLimitLine.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Components/ChartLimitLine.swift) | Defines ChartLimitLine for Line, Bar, and ScatterCharts in the Habit-App repository. Displays a limit line on the chart with customizable properties like limit value, line style, label position, and appearance. Enhances chart visualization by marking specified maximum/limit values on the axis. |
| [MarkerView.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Components/MarkerView.swift)         | Defines a marker view for charts within the Habit-App repositorys Charts module. Manages positioning, content refresh, and drawing logic on the chart with methods like `offsetForDrawing`. Offers the ability to create views from Xib files, enhancing chart visualization functionality.            |
| [Marker.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Components/Marker.swift)                 | Defines Marker protocol for custom markers in Charts component. Includes methods for offset, updating content, and drawing. Facilitates customization and dynamic positioning of markers in the Habit-App repositorys charting functionality.                                                          |
| [ComponentBase.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Components/ComponentBase.swift)   | Defines common properties for Axis, Legend, and LimitLines components in Charts repo. Encapsulates shared functionality like enabled status and offsets on the x-axis and y-axis. Maintains simplicity and consistency across components.                                                              |

</details>

<details closed><summary>Pods.Charts.Source.Charts.Jobs</summary>

| File                                                                                                                                 | Summary                                                                                                                                                                                                                                                                   |
| ---                                                                                                                                  | ---                                                                                                                                                                                                                                                                       |
| [AnimatedZoomViewJob.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Jobs/AnimatedZoomViewJob.swift) | Defines AnimatedZoomViewJob subclass, handling animated zoom operations on a chart view, contributing to the Charts module of the Habit-App repository.                                                                                                                   |
| [ViewPortJob.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Jobs/ViewPortJob.swift)                 | Manages viewport modifications for delaying or animating changes in the parent iOS repositorys chart view. Inherits essential properties and requires subclass implementation of action execution. Built from the MPAndroidChart for iOS project in the Charts submodule. |
| [MoveViewJob.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Jobs/MoveViewJob.swift)                 | Moves and centers the chart view based on specified x and y values. Part of the Charts library in the Habit-App repository, enhancing visualization for habit tracking.                                                                                                   |
| [ZoomViewJob.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Jobs/ZoomViewJob.swift)                 | Implements zoom functionality in Charts repositorys Habit-App for iOS. Modifies the views matrix and refreshes the chart display based on user interaction.                                                                                                               |
| [AnimatedViewPortJob.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Jobs/AnimatedViewPortJob.swift) | Implements animated view port manipulation for charting library within Habit-Apps Charts module. Handles animation initiation, updating, and completion using specified duration and easing function.                                                                     |
| [AnimatedMoveViewJob.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Jobs/AnimatedMoveViewJob.swift) | Implements an animated view job in the Charts module. Moves the view to a new position based on provided coordinates and phase. Contributed to by Daniel Cohen Gindi and Philipp Jahoda.                                                                                  |

</details>

<details closed><summary>Pods.Charts.Source.Charts.Data.Implementations</summary>

| File                                                                                                                                           | Summary                                                                                                                                                                                                                                                                                                       |
| ---                                                                                                                                            | ---                                                                                                                                                                                                                                                                                                           |
| [ChartBaseDataSet.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Implementations/ChartBaseDataSet.swift) | Defines data set structure with color handling and data access methods. Encapsulates data set properties such as colors, labels, and visibility settings. Enables DataSet copying and notification updates. It serves as a foundation for visual representation in the Habit-App repositorys Chart component. |

</details>

<details closed><summary>Pods.Charts.Source.Charts.Data.Implementations.Standard</summary>

| File                                                                                                                                                                                                | Summary                                                                                                                                                                                                                                                                                                                                                                         |
| ---                                                                                                                                                                                                 | ---                                                                                                                                                                                                                                                                                                                                                                             |
| [ChartData.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Implementations/Standard/ChartData.swift)                                                           | This code file in the `Charts` module of the `Habit-App` repository contributes to visualizing habit data within the habit tracking application. It offers essential functionalities for handling and displaying data points, supporting the interactive and informative nature of the apps habit monitoring features.                                                          |
| [BarChartDataEntry.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Implementations/Standard/BarChartDataEntry.swift)                                           | Defines BarChartDataEntry for a stacked bar chart. Handles stacked and individual bar entries with sums, ranges, and icons. Calculates positive and negative sums, supporting copy function and stack size checking.                                                                                                                                                            |
| [BarChartDataSet.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Implementations/Standard/BarChartDataSet.swift)                                               | Implements core features for stacked bar chart data representation in the Habit-App repository, enhancing visualization capabilities. Calculates stack sizes and entry counts, supports styling customization, and facilitates data copying.                                                                                                                                    |
| [RadarChartDataEntry.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Implementations/Standard/RadarChartDataEntry.swift)                                       | Defines RadarChartDataEntry class for Radar chart in the Habit-App repository. Manages entry values for the y-axis with support for additional data. Inherits from ChartDataEntry superclass.                                                                                                                                                                                   |
| [BarLineScatterCandleBubbleChartDataSet.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Implementations/Standard/BarLineScatterCandleBubbleChartDataSet.swift) | Defines styling properties for a dataset in a charting library used within the Habit-App repository. Manages highlight color, line width, and dash settings. Facilitates customization of visual aspects for various data representations.                                                                                                                                      |
| [PieChartDataEntry.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Implementations/Standard/PieChartDataEntry.swift)                                           | Defines PieChartDataEntry with value, label, icon, and data properties. Manages initialization convenience methods and overrides NSCopying for the Charts repositorys pie chart functionality.                                                                                                                                                                                  |
| [CandleChartDataEntry.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Implementations/Standard/CandleChartDataEntry.swift)                                     | Defines a CandleChartDataEntry class representing candlestick chart data for financial visualizations. Stores shadow, open, and close values with computed ranges. Extends functionality for copying entries. Facilitates detailed candlestick representation within the Habit-App Charts module.                                                                               |
| [CombinedChartData.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Implementations/Standard/CombinedChartData.swift)                                           | Manages** combined chart data, merging line, bar, scatter, candle, and bubble datasets. **Calculates** min/max values, **updates** data, and **finds** entries by highlights. Supports dataset operations **excluding** appending and removing specific elements.                                                                                                               |
| [LineChartData.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Implementations/Standard/LineChartData.swift)                                                   | Defines LineChartData to encapsulate data for a LineChart in the Habit-App repository. Inherits from ChartData and provides initializers for managing data sets. Maintains cohesive data structure for visual representation.                                                                                                                                                   |
| [RadarChartData.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Implementations/Standard/RadarChartData.swift)                                                 | Defines radar chart data with customizable highlight settings and labels for end points. Complements the Charts module in the Habit-App repository, facilitating visual data representation for radar charts.                                                                                                                                                                   |
| [CandleChartDataSet.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Implementations/Standard/CandleChartDataSet.swift)                                         | Defines styling and data functions for CandleChart in the Habit-App repository Charts module. Manages bar space, colors, shadow width, and appearance options for candlesticks. Enables customization and visual representation of financial data.                                                                                                                              |
| [LineRadarChartDataSet.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Implementations/Standard/LineRadarChartDataSet.swift)                                   | Defines LineRadarChartDataSet with custom styling properties for filling the line surface area. Enables drawing filled datasets for enhanced visual representation in the Habit-App repositorys Charts module.                                                                                                                                                                  |
| [BarLineScatterCandleBubbleChartData.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Implementations/Standard/BarLineScatterCandleBubbleChartData.swift)       | Defines data structure for bar, line, scatter, candle, and bubble charts in the Charts repository. Inherits from ChartData class, providing initializers to handle chart dataset protocols efficiently.                                                                                                                                                                         |
| [BubbleChartDataEntry.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Implementations/Standard/BubbleChartDataEntry.swift)                                     | Defines BubbleChartDataEntry for the Bubble chart in the Habit-App repos Charts module. Manages bubble size, data, and icon with initializers for x, y, size, icon, and data, conforming to NSCopying for copying behavior.                                                                                                                                                     |
| [ChartDataEntryBase.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Implementations/Standard/ChartDataEntryBase.swift)                                         | Defines ChartDataEntryBase class with y value, data, and icon for chart entries. Includes initializers with flexible parameter combinations. Overrides description and isEqual for object comparison. Supports additional data and icon images for each entry.                                                                                                                  |
| [ChartDataEntry.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Implementations/Standard/ChartDataEntry.swift)                                                 | Defines custom data entry for charts with x and y values. Implements copy methods for data and icon, supports Equatable.graphuably summarizes chart data entry.                                                                                                                                                                                                                 |
| [PieChartDataSet.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Implementations/Standard/PieChartDataSet.swift)                                               | Defines customization properties for a pie chart slice. Manages spacing, position, and aesthetics like color and font. Enables easy styling adjustments for visual representation.                                                                                                                                                                                              |
| [BubbleChartData.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Implementations/Standard/BubbleChartData.swift)                                               | Defines BubbleChartData for bubble charts in the Charts module. Inherits data structures and sets highlight circle width for each dataset.                                                                                                                                                                                                                                      |
| [ChartDataSet.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Implementations/Standard/ChartDataSet.swift)                                                     | Charts Component SummaryThe `Chart` file within the `Charts` component of the Habit-App repository provides essential functionality for visualizing data through various chart types. This component enhances the user experience by enabling dynamic and intuitive data representation within the Habit-App, empowering users to track and visualize their habits effectively. |
| [ScatterChartDataSet.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Implementations/Standard/ScatterChartDataSet.swift)                                       | Defines custom scatter chart data for scatter plot in the Habit-App repositorys Charts module. Allows setting scatter shape, size, hole radius, and color. Implements various shapes like square, circle, triangle, etc., with customizable rendering.                                                                                                                          |
| [ScatterChartData.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Implementations/Standard/ScatterChartData.swift)                                             | Defines ScatterChartData class with methods to calculate the maximum shape size across datasets. It extends the parent class, handling dataSets for scatter charts, contributing to the visual representation layer of the Habit-App project architecture.                                                                                                                      |
| [PieChartData.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Implementations/Standard/PieChartData.swift)                                                     | Implements the PieChartData class for holding pie chart data. Ensures only one dataset is allowed. Provides methods for accessing data and calculating the total y-value sum. Crucial for displaying pie chart data in the Habit App.                                                                                                                                           |
| [CandleChartData.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Implementations/Standard/CandleChartData.swift)                                               | Defines CandleChartData class extending parent class for candlestick chart data handling in the Habit-App projects Charts module.                                                                                                                                                                                                                                               |
| [LineChartDataSet.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Implementations/Standard/LineChartDataSet.swift)                                             | Implements LineChartDataSet with customizable features like circle colors, drawing modes, and line styling. Critical for visualizing data in the Habit-App repositorys charts module.                                                                                                                                                                                           |
| [BubbleChartDataSet.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Implementations/Standard/BubbleChartDataSet.swift)                                         | Defines BubbleChartDataSet with data functions, styling accessors, and calcMinMax method for bubble chart implementation in the Habit-App repositorys Charts module. Manages bubble size, circle width, and NSCopying functionality.                                                                                                                                            |
| [RadarChartDataSet.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Implementations/Standard/RadarChartDataSet.swift)                                           | Defines radar chart dataset styling properties such as enabling/disabling highlight circle, setting colors, and defining circle dimensions. Inherits from LineRadarChartDataSet and adheres to RadarChartDataSetProtocol. Centralizes styling initialization logic for consistency.                                                                                             |
| [BarChartData.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Implementations/Standard/BarChartData.swift)                                                     | Defines BarChartData with functions to group bar data and calculate group width for a bar chart. Handles bar width and spacing between groups and bars, maintaining data consistency for effective visualization in the Habit-App repositorys architecture.                                                                                                                     |
| [LineScatterCandleRadarChartDataSet.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Implementations/Standard/LineScatterCandleRadarChartDataSet.swift)         | Implements styling functions and accessors for horizontal and vertical highlight indicators. Enables toggling both indicators with a single function. Inherits core functionality from the parent class.                                                                                                                                                                        |

</details>

<details closed><summary>Pods.Charts.Source.Charts.Data.Interfaces</summary>

| File                                                                                                                                                                                                  | Summary                                                                                                                                                                                                                                           |
| ---                                                                                                                                                                                                   | ---                                                                                                                                                                                                                                               |
| [PieChartDataSetProtocol.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Interfaces/PieChartDataSetProtocol.swift)                                               | Defines styling properties for a Pie Chart slice. Controls slice spacing, selection shift, value positioning, line styling, label fonts/colors, and highlight color. Facilitates customization and visual appeal in the Habit-App Charts module.  |
| [BarChartDataSetProtocol.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Interfaces/BarChartDataSetProtocol.swift)                                               | Defines a protocol for Bar Chart Data Sets with features like stacking bars, specifying bar shadows, borders, and highlight alpha. It also includes functionality for setting stack labels.                                                       |
| [LineRadarChartDataSetProtocol.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Interfaces/LineRadarChartDataSetProtocol.swift)                                   | Defines interface for styling and data access of line and radar chart datasets in the Habit-App. Features include setting line fill color, alpha, width, and enabling filled drawing for enhanced chart visualization and customization.          |
| [BubbleChartDataSetProtocol.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Interfaces/BubbleChartDataSetProtocol.swift)                                         | Defines BubbleChartDataSetProtocol with functions for data access and styling in the Charts module. Key features include managing bubble size, enabling normalization, and setting highlight circle width.                                        |
| [LineChartDataSetProtocol.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Interfaces/LineChartDataSetProtocol.swift)                                             | Defines styling options for LineChart dataset in the Habit-App repository Charts module. Specifies line drawing mode, cubic intensity, gradient settings, circle radius, and colors. Enables customization of circle appearance and dash pattern. |
| [CandleChartDataSetProtocol.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Interfaces/CandleChartDataSetProtocol.swift)                                         | Defines styling and data properties for candlestick charts, including bar space, shadow width, color, and filled options. Enhances visual representation in the Habit-App repositorys charting feature.                                           |
| [BarLineScatterCandleBubbleChartDataSetProtocol.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Interfaces/BarLineScatterCandleBubbleChartDataSetProtocol.swift) | Defines styling properties for bar, line, scatter, candle, and bubble charts. Extends core dataset functionality. Maintains highlight color, line width, and dash settings for chart visualization.                                               |
| [ChartDataSetProtocol.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Interfaces/ChartDataSetProtocol.swift)                                                     | Defines essential functions for dynamically managing data entries in a chart dataset, enabling updates, additions, removals, and styling configurations for visual representation within the Habit-App repositorys architecture.                  |
| [LineScatterCandleRadarChartDataSetProtocol.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Interfaces/LineScatterCandleRadarChartDataSetProtocol.swift)         | Defines styling and interaction behaviors for line, scatter, candle, and radar chart datasets. Specifies methods to enable/disable horizontal and vertical highlight indicators, providing control over visual cues in the charts.                |
| [ScatterChartDataSetProtocol.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Interfaces/ScatterChartDataSetProtocol.swift)                                       | Defines ScatterChartDataSetProtocol with functions to access scatter shape properties and styling. It extends LineScatterCandleRadarChartDataSetProtocol.belongsTo Habit-Apps Charts module for scatter chart functionality.                      |
| [RadarChartDataSetProtocol.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Data/Interfaces/RadarChartDataSetProtocol.swift)                                           | Defines styling and data features for radar chart datasets in the Habit-App repository. Enables customization of highlight circle appearance and behavior. Supports enhanced visual representation of data in the radar chart module.             |

</details>

<details closed><summary>Pods.Charts.Source.Charts.Interfaces</summary>

| File                                                                                                                                                                                       | Summary                                                                                                                                                                                                                                                   |
| ---                                                                                                                                                                                        | ---                                                                                                                                                                                                                                                       |
| [BarChartDataProvider.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Interfaces/BarChartDataProvider.swift)                                               | Defines the interface for a bar chart data provider within the Charts module. Specifies properties like bar data, bar shadow, and value positioning. Supports full bar highlighting.                                                                      |
| [ChartDataProvider.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Interfaces/ChartDataProvider.swift)                                                     | Defines essential chart data properties and methods for the Habit-App repositorys Charts feature, supporting data visualization and manipulation.                                                                                                         |
| [CandleChartDataProvider.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Interfaces/CandleChartDataProvider.swift)                                         | Defines a protocol for Candle Chart Data Provider within the Charts module. It extends functionalities to handle candlestick chart data in the Habit-App repositorys architecture.                                                                        |
| [CombinedChartDataProvider.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Interfaces/CombinedChartDataProvider.swift)                                     | Enables integration of different chart data providers for combined chart functionality within the Habit-App repositorys architecture, supporting diverse chart types seamlessly.                                                                          |
| [LineChartDataProvider.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Interfaces/LineChartDataProvider.swift)                                             | Defines LineChartDataProvider protocol, extending BarLineScatterCandleBubbleChartDataProvider for Habit-App. Enables access to lineData and retrieves YAxis for a given axis type, crucial for displaying interactive line charts.                        |
| [BarLineScatterCandleBubbleChartDataProvider.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Interfaces/BarLineScatterCandleBubbleChartDataProvider.swift) | Defines data provider protocol for various chart types. Exposes methods to retrieve transformer and check axis inversion. Defines properties for visible X-axis range. Part of the Charts framework in the Habit-App repository.                          |
| [ScatterChartDataProvider.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Interfaces/ScatterChartDataProvider.swift)                                       | Defines a protocol for Scatter Chart data in the Habit-App repository, contributing to data visualization in the apps various modules.                                                                                                                    |
| [BubbleChartDataProvider.swift](https://github.com/xDhii/Habit-App/blob/master/Pods/Charts/Source/Charts/Interfaces/BubbleChartDataProvider.swift)                                         | Defines a protocol to provide bubble chart data in the Charts module of the Habit-App repository. This interface extends functionalities inherited from other chart data providers, ensuring consistency in data management across different chart types. |

</details>

<details closed><summary>Habit.xcworkspace</summary>

| File                                                                                                                  | Summary                                                                                                                               |
| ---                                                                                                                   | ---                                                                                                                                   |
| [contents.xcworkspacedata](https://github.com/xDhii/Habit-App/blob/master/Habit.xcworkspace/contents.xcworkspacedata) | Specifies the file references for the Habit apps Xcode workspace, linking the main project and Pods project for seamless integration. |

</details>

<details closed><summary>Habit.xcworkspace.xcshareddata</summary>

| File                                                                                                                               | Summary                      |
| ---                                                                                                                                | ---                          |
| [IDEWorkspaceChecks.plist](https://github.com/xDhii/Habit-App/blob/master/Habit.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist) | Disables Mac 32-bit warning. |

</details>

---

##  Getting Started

**System Requirements:**

* **Swift**: `version x.y.z`

###  Installation

<h4>From <code>source</code></h4>

> 1. Clone the Habit-App repository:
>
> ```console
> $ git clone https://github.com/xDhii/Habit-App
> ```
>
> 2. Change to the project directory:
> ```console
> $ cd Habit-App
> ```
>
> 3. Install the dependencies:
> ```console
> $ pod install
> ```

Obs: To install dependencies, you need to have CocoaPods installed on your machine. If you don't have it, make sure that you have homebrew installed, then you can install dependencies by running the following command:
```console
$ brew install cocoapods
```

---

##  Contributing

Contributions are welcome! Here are several ways you can contribute:

- **[Report Issues](https://github.com/xDhii/Habit-App/issues)**: Submit bugs found or log feature requests for the `Habit-App` project.
- **[Submit Pull Requests](https://github.com/xDhii/Habit-App/blob/main/CONTRIBUTING.md)**: Review open PRs, and submit your own PRs.
- **[Join the Discussions](https://github.com/xDhii/Habit-App/discussions)**: Share your insights, provide feedback, or ask questions.

<details closed>
<summary>Contributing Guidelines</summary>

1. **Fork the Repository**: Start by forking the project repository to your github account.
2. **Clone Locally**: Clone the forked repository to your local machine using a git client.
   ```sh
   git clone https://github.com/xDhii/Habit-App
   ```
3. **Create a New Branch**: Always work on a new branch, giving it a descriptive name.
   ```sh
   git checkout -b feature/new-feature-x
   ```
   In case of a bugfix:
   ```sh
   git checkout -b bugfix/issue-x
   ```
4. **Make Your Changes**: Develop and test your changes locally.
5. **Commit Your Changes**: Commit with a clear message describing your updates.
   ```sh
   git commit -m 'Implemented new feature x.'
   ```
6. **Push to github**: Push the changes to your forked repository.
   ```sh
   git push origin new-feature-x
   ```
   or
   ```sh
   git push origin bugfix/issue-x
   ```
7. **Submit a Pull Request**: Create a PR against the original project repository. Clearly describe the changes and their motivations.
8. **Review**: Once your PR is reviewed and approved, it will be merged into the main branch. Congratulations on your contribution!
</details>

<details closed>
<summary>Contributor Graph</summary>
<br>
<p align="center">
   <a href="https://github.com{/xDhii/Habit-App/}graphs/contributors">
      <img src="https://contrib.rocks/image?repo=xDhii/Habit-App">
   </a>
</p>
</details>

---

##  License

This project is protected under the MIT License


[**Return**](#-overview)

---
