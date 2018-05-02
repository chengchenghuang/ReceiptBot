# ReceiptBot
Summary:
ReceiptBot is an app that allows users to store, input, and organize their receipts to keep track of their spendings. The user can either upload a receipt from their local album or take a photo through the app camera. Then, the user can input the date, amount, and a short memo for the receipt. All receipts will be stored locally through core data and be accessible offline in the log. 

Authors@:
CiCi Huang cicihuang@berkeley.edu
Jenny Cong jfcong@berkeley.edu
Victor Cheng victorcheng16@berkeley.edu

Files in details:
1. UploadViewController
Main Page and first page, has two buttons that one goes to MainViewController(Upload photo from library), the other one goes to CameraViewController

2. MainViewController
It allows users to choose photos from their local library, and displays the preview of the image that they chose, then users can click submit photo to go to UploadingViewController

3. CameraViewController
It allows users to take photos and automatically saves photos to their local library, it will direct users to UploadingViewController after users take photos (the same way that MainViewController does "clicking submit photo button")

4. UploadingViewController
It is an information-filling page where users can edit the date, the amount and add a note along with the picture of the receipt that they have chosen, after cliking "save", the receipt information will be saved into CoreData, and the user will be directed to LogTableViewController

5. LogTableViewController
It has a table of logs of different receipts which is composed of different receipt cells. If users click into one receipt, it will show the receipt photo

6. LogTableViewController
It has three attributes, memo, data, amount and photo data

7. PreviewController
It shows the image that corresponds to a receipt




