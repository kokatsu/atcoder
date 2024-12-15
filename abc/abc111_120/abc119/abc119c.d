import std;

void main() {
    auto A = readln.chomp.split.to!(int[]);

    int N = A.front;
    A.popFront;

    int[] l = new int[](N);
    foreach (i; 0 .. N)
        readf("%d\n", l[i]);

    int f(int pos, int[] arr) {
        int res = int.max / 2;

        if (pos == N) {
            if (arr.minElement > 0) {
                int num;
                foreach (i; 0 .. 3)
                    num += abs(arr[i] - A[i]);
                res = min(res, num);
            }
            return res;
        }

        res = min(res, f(pos + 1, arr));
        foreach (i; 0 .. 3) {
            int mp = (arr[i] > 0 ? 10 : 0);
            arr[i] += l[pos];
            res = min(res, f(pos + 1, arr) + mp);
            arr[i] -= l[pos];
        }

        return res;
    }

    int res = f(0, repeat(0, 3).array);
    res.writeln;
}
