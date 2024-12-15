import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int[] arr = [];
    foreach (i, a; A) {
        if (arr.empty || a > arr[$ - 1]) {
            arr ~= a;
        }
        else {
            int ok = arr.length.to!int, ng;
            while (ng < ok) {
                int mid = (ok + ng) / 2;
                if (arr[mid] >= a) {
                    ok = mid;
                }
                else {
                    ng = mid + 1;
                }
            }
            arr[ok] = a;
        }
    }

    auto res = arr.length;
    res.writeln;
}
