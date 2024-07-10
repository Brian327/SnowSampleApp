import os

from zipfile import ZipFile

version = "V1.00"
TargetZipFile = "lib.zip"

FilesToZip = ["lib\\speciallib.py",
              "lib\\__init__.py",
              "lib\\pretty\\morefunctions.py",
              "lib\\pretty\\__init__.py"]

cwd = os.getcwd()

BaseLocation = cwd + "\\notworking\\snowflake\\step_1_apppkg\\"
ZipFileLocation = BaseLocation + "src\\" + version + "\\code\\" + TargetZipFile

print("Zip File", ZipFileLocation )

with ZipFile(ZipFileLocation, 'w') as zipobj:

    for file in FilesToZip:

        TargetFile = BaseLocation + "\\src\\" + version + "\\code\\" + file

        zipobj.write(filename=TargetFile, arcname=file)

        print("File To Zip", TargetFile)
