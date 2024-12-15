import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    auto T = new int[](N);
    auto list = new ulong[][](3);
    foreach (i, s; S) {
        if (s == 'R')
            T[i] = 0, list[0] ~= i;
        if (s == 'G')
            T[i] = 1, list[1] ~= i;
        if (s == 'B')
            T[i] = 2, list[2] ~= i;
    }

    auto sorted = new SortedRange!(ulong[], "a < b")[](3);
    foreach (i; 0 .. 3)
        sorted[i] = list[i].assumeSorted;

    ulong res;
    foreach (i; 0 .. N - 2) {
        foreach (j; i + 1 .. N - 1) {
            if (T[i] == T[j])
                continue;

            int num = 3 - T[i] - T[j];
            auto ub = sorted[num].upperBound(j);
            res += ub.length;

            int k = j * 2 - i;
            if (k < N && T[k] == num)
                --res;
        }
    }

    res.writeln;
}
