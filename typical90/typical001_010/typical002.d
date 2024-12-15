import std;

void main() {
    int N;
    readf("%d\n", N);

    if (N % 2 == 1) {
        return;
    }

    string l = "(", r = ")";
    string[] list;

    void dfs(string s, int surplus) {
        if (N - s.length <= surplus) {
            list ~= s ~ r.cycle.take(surplus).to!string;
        }
        else {
            dfs(s ~ l, surplus + 1);
            if (surplus > 0) {
                dfs(s ~ r, surplus - 1);
            }
        }
    }

    dfs(l, 1);

    foreach (a; list) {
        a.writeln;
    }
}
