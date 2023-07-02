def count(a):
    cnt = 0
    if a==0:
        return 1
    if a==1:
        return 1
    for i in range(2, a):
        if a % i == 0:
            cnt += 1
    return cnt 

def is_number(b): #Function returns if the input is positive integer
    return b.isdigit()

def main():
    print("The program detects the perfect square: num=x^2")
    while True:
        num = input("Enter Your number, please: ")
        if is_number(num):
            break
        else:
            print("The input is not a positive integer, try again please.")

    if count(int(num)) % 2 != 0:
        print("Perfect square")
    else:
        print("Not perfect square")
        
    print("\nThank You for your time.")
main()