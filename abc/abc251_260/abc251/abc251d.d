import std;

void main() {
    long W;
    readf("%d\n", W);

    long L = 100;
    long[] res;
    foreach (i; 1 .. L) {
        res ~= i;
        res ~= i * L;
        res ~= i * L ^^ 2;
    }

    res.length.writeln;
    writefln("%(%s %)", res);
}