import std;

void main() {
    string S;
    readf("%s\n", S);

    int[] P = new int[](26);
    foreach (i, s; S) {
        P[s - 'A'] = i.to!int;
    }

    int res, q = P[0];
    foreach (p; P) {
        res += abs(p - q);
        q = p;
    }

    res.writeln;
}
