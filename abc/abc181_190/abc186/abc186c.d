import std;

void main() {
    int N;
    readf("%d\n", N);

    int res;
    foreach (i; 1 .. N + 1) {
        auto dec = i.to!string;
        if (dec.canFind('7'))
            continue;

        auto oct = i.to!string(8);
        if (oct.canFind('7'))
            continue;

        ++res;
    }

    res.writeln;
}
