import std;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    string res = "kogakubu10gokan";
    foreach (_; 0 .. N) {
        int year;
        string name;
        readf("%d %s\n", year, name);

        if (year <= Q)
            res = name;
    }

    res.writeln;
}
