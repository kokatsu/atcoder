import std;

void main() {
    int Y, M, D;
    readf("%d/%d/%d\n", Y, M, D);

    writeln(M <= 4 ? "Heisei" : "TBD");
}
