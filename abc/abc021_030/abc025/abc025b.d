import std;

void main() {
    int N, A, B;
    readf("%d %d %d\n", N, A, B);

    int dist;
    foreach (_; 0 .. N) {
        string s;
        int d;
        readf("%s %d\n", s, d);

        dist += (s == "East" ? 1 : -1) * clamp(d, A, B);
    }

    if (dist == 0) {
        dist.writeln;
        return;
    }

    string dir = "East";
    if (dist < 0) dir = "West", dist *= -1;

    writeln(dir, " ", dist);
}