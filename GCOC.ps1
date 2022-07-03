# Import the CSV file
$File = Import-Csv -Delimiter ',' "C:\Users\Hugo Santos\Desktop\test.csv"

#For each row it will add user 1 to the first position and user 2 to the 2 position
#Ensure that after ${thing}. you place the name of the colum for each colum in use 

foreach ($thing in $File) {
echo "Set-Mailbox $(${thing}.User1) -ForwardingAddress $(${thing}.User2) -DeliverToMailboxAndForward " 
}
