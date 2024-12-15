import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    auto X = new int[](26), Y = new int[](26);
    foreach (s; S)
        ++Y[s - 'a'];

    int res;
    foreach (s; S) {
        ++X[s - 'a'], --Y[s - 'a'];

        int num;
        foreach (x, y; zip(X, Y)) {
            if (x > 0 && y > 0)
                ++num;
        }

        res = max(res, num);
    }

    res.writeln;
}
