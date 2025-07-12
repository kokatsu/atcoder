import std;

void main() {
    int N;
    readf("%d\n", N);

    long M;
    auto c = new char[](N);
    auto l = new long[](N);
    foreach (i; 0 .. N) {
        readf("%c %d\n", c[i], l[i]);
        if (M <= 100) {
            M += l[i];
        }
    }

    if (M > 100) {
        writeln("Too Long");
        return;
    }

    string res;
    foreach (i; 0 .. N) {
        res ~= repeat(c[i], l[i]).to!string;
    }

    res.writeln;
}
