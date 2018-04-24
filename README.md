# ReceiptBot
This IOS Mobile app will allow users to take photos of receipts and will use OCR(optical character recognition) to extract text inside a single receipt to text format. It implements Google Vision, a machine learning API to identify the amount of money you spend by analyzing each receipt and keeps records. It also provides the option to let users correct numbers or input information manually for people who like the accountability of entering transactions by hand. It will also generate weekly/monthly spending analysis for each user and will give insights to users how they have spent their moeny. 

For Victor,
The File to edit is RealReceiptBot instead of other files
1. Connect the CameraController to send the photo user takes to the Upload page and place the image in the previewUIImage
2. Figure out how to save an image in CoreData. Hint: Convert the image to Data form and convert it back when it is needed to display
3. Figure out the segues

Files Explained:
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




