import std;

void main() {
    int X;
    readf("%d\n", X);

    if (X >= 100 && X % 100 == 0) {
        writeln("Yes");
    }
    else {
        writeln("No");
    }
}
