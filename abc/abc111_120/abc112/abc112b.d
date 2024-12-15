import std;

void main() {
    int N, T;
    readf("%d %d\n", N, T);

    int cost = int.max;
    foreach (_; 0 .. N) {
        int c, t;
        readf("%d %d\n", c, t);

        if (t <= T)
            cost = min(cost, c);
    }

    string res = (cost == int.max ? "TLE" : cost.to!string);
    res.writeln;
}
