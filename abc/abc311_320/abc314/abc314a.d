import std;

enum string P = "3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679";

void main() {
    int N;
    readf("%d\n", N);

    string res = P[0 .. N + 2];
    res.writeln;
}
