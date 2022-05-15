import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int f(int[] arr, int x) {
        int ok = -1, ng = N;
        while (ng - ok > 1) {
            int mid = (ok + ng) / 2;
            (arr[mid] < x ? ok : ng) = mid;
        }
        return ok;
    }

    auto LIS = new int[](N);
    LIS[] = int.max;
    auto inc = new int[](N);
    foreach (i, a; A) {
        int p = f(LIS, a) + 1;
        LIS[p] = a;
        inc[i] = p + 1;
    }

    LIS[] = int.max;
    auto dec = new int[](N);
    foreach_reverse (i, a; A) {
        int p = f(LIS, a) + 1;
        LIS[p] = a;
        dec[i] = p + 1;
    }

    long res;
    foreach (i; 0 .. N) res = max(res, inc[i]+dec[i]-1);

    res.writeln;
}