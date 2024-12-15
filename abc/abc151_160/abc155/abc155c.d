import std;

void main() {
    int N;
    readf("%d\n", N);

    int[string] list;
    int mx;
    foreach (_; 0 .. N) {
        string S;
        readf("%s\n", S);

        mx = max(mx, ++list[S]);
    }

    string[] res;
    foreach (key, val; list) {
        if (val == mx)
            res ~= key;
    }

    res.sort;

    foreach (r; res)
        r.writeln;
}
