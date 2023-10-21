import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(int[]);

    auto LIS = new int[](N);
    LIS[] = int.max;

    int res;
    foreach (x; a) {
        int l, r = N;
        while (r - l > 1) {
            int mid = (l + r) / 2;
            (x < LIS[mid] ? l : r) = mid;
        }

        if (LIS[l] == int.max) ++res;
        LIS[l] = x;
    }

    res.writeln;
}