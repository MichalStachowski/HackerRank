// https://www.hackerrank.com/challenges/staircase/problem
// Write a function to print staircase
// staircase of size n=4:
//    #
//   ##
//  ###
// ####

void staircase(int n) {
    int numberWhenStartToPrint = n - 2;
    for (int i=0; i<n; i++) {
        for (int j=0; j<n; j++) {
            if (j > numberWhenStartToPrint) cout << "#";
            else cout << " ";
        }
        numberWhenStartToPrint--;
        cout << endl;
    }
}
