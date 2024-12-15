import std;

void main() {
    int M;
    readf("%d\n", M);

    string[] A;
    foreach_reverse (i; 0 .. 11) {
        int P = 3 ^^ i;
        while (M >= P) {
            M -= P;
            A ~= i.to!string;
        }
    }

    string res = A.length.to!string ~ "\n" ~ A.join(" ");
    res.writeln;
}
