import std;

void main() {
    int N;
    readf("%d\n", N);

    bool[string] used;
    int[string] nums;
    auto S = new string[](N), T = new string[](N);
    foreach (i; 0 .. N) {
        readf("%s %s\n", S[i], T[i]);

        used[S[i]] = true;
        nums[S[i]] = i.to!int;
    }

    int[] nouse;
    int[string] wait;
    foreach (i, t; T) {
        if (t !in used)
            nouse ~= i.to!int;
        else
            wait[S[nums[t]]] = i.to!int;
    }

    int cnt;
    while (!nouse.empty) {
        auto f = nouse.front;
        nouse.popFront;

        used[T[f]] = true;

        if (S[f] in wait) {
            nouse ~= wait[S[f]];
            wait.remove(S[f]);
        }

        ++cnt;
    }

    writeln(cnt == N ? "Yes" : "No");
}
