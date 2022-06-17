import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto t = new long[](N), d = new long[](N);
    foreach (i; 0 .. N) readf("%d %d\n", t[i], d[i]);

    zip(t, d).sort!"a[1] > b[1]";

    long[] sels, rems;
    auto isSelected = new bool[](N+1);
    foreach (i; 0 .. N) {
        if (isSelected[t[i]]) {
            rems ~= d[i];
        }
        else {
            sels ~= d[i];
            isSelected[t[i]] = true;
        }
    }

    sels.sort!"a > b";
    auto nums = new long[](N+1);
    foreach (i, x; sels) nums[i+1] = nums[i] + x;

    rems.sort!"a > b";
    auto dbls = new long[](N+1);
    foreach (i, x; rems) {
        if (i >= K) break;

        dbls[K-i-1] = dbls[K-i] + x;
    }

    long res;
    foreach (i; 1 .. K+1) {
        if (nums[i] == 0) break;

        res = max(res, nums[i]+dbls[i]+i*i);
    }

    res.writeln;
}