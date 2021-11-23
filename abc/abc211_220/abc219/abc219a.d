import std;

void main() {
    int X;
    readf("%d\n", X);

    if (X >= 90) {
        writeln("expert");
    }
    else if (X >= 70) {
        writeln(90 - X);
    }
    else if (X >= 40) {
        writeln(70 - X);
    }
    else {
        writeln(40 - X);
    }
}