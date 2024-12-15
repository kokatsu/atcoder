import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] A = new int[](N);
    int[] B = new int[](N);
    foreach (i; 0 .. N) {
        readf("%d %d\n", A[i], B[i]);
    }

    zip(A, B).sort!((a, b) => a[0] < b[0]);

    int[] days = new int[](N + 1);
    int first = A[0];
    auto last = BinaryHeap!(Array!int, "a > b")();
    last.insert(A[0] + B[0]);
    int cnt = 1;
    foreach (i; 1 .. N) {
        while (!last.empty && last.front <= A[i]) {
            int l = last.front;
            days[cnt] += l - first;
            last.popFront;
            first = l;
            --cnt;
        }

        if (A[i] > first) {
            days[cnt] += A[i] - first;
        }

        first = A[i];
        last.insert(A[i] + B[i]);
        ++cnt;
    }

    while (!last.empty) {
        int l = last.front;
        days[cnt] += l - first;
        last.popFront;
        first = l;
        --cnt;
    }

    foreach (i; 1 .. N + 1) {
        if (i == N) {
            writeln(days[i]);
        }
        else {
            write(days[i], " ");
        }
    }
}
