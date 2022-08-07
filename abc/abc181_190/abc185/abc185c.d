import std;

void main() {
    long L;
    readf("%d\n", L);

    long C = 11;

    long res = 1;
    foreach (i; 1 .. C+1) {
        res *= L - i;
        res /= i;
    }

    res.writeln;
}