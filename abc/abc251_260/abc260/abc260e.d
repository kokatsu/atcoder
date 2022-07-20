import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto nums = new int[][](M+1);
    foreach (i; 0 .. N) {
        int A, B;
        readf("%d %d\n", A, B);

        nums[A] ~= i, nums[B] ~= i;
    }

    auto cnts = new int[](N), arr = new int[](M);
    int cnt, r = 1;
    foreach (l; 1 .. M+1) {
        while (r <= M && cnt < N) {
            foreach (num; nums[r]) {
                if (cnts[num] == 0) ++cnt;
                ++cnts[num];
            }

            ++r;
        }

        if (cnt < N) break;

        int f = r - l - 1, b = M - l + 1;
        ++arr[f];
        if (b < M) --arr[b];

        foreach (num; nums[l]) {
            --cnts[num];
            if (cnts[num] == 0) --cnt;
        }
    }

    auto res = arr.cumulativeFold!"a + b".array;
    writefln("%(%s %)", res);
}