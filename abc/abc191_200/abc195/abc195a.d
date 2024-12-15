import std;

void main() {
    int M, H;
    readf("%d %d\n", M, H);

    writeln(H % M == 0 ? "Yes" : "No");
}
