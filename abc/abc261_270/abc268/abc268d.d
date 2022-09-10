import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    int C;

    auto S = new string[](N);
    foreach (i; 0 .. N) {
        readf("%s\n", S[i]);
        C += S[i].length.to!int;
    }

    bool[string] list;
    foreach (_; 0 .. M) {
        string T;
        readf("%s\n", T);

        list[T] = true;
    }

    ulong l = 3, u = 16;
    string res = "-1";
    auto cnts = new int[](N);
    cnts[0..N-1] = 1;

    void f(string[] arr, int[] nums, int idx = 0) {
        string str;
        foreach (i; 0 .. N) {
            str ~= arr[i];
            foreach (_; 0 .. nums[i]) {
                str ~= "_";
            }
        }

        if (str.length > u) return;

        if (str.length >= l && !(str in list)) {
            res = str;
            return;
        }

        if (idx >= N - 1) return;

        if (C + nums.sum < u) {
            ++nums[idx];
            f(arr, nums, idx);
            --nums[idx];
        }

        f(arr, nums, idx+1);
    }

    foreach (p; S.permutations) {
        f(p.array, cnts.dup);
    }

    res.writeln;
}