import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto top = new int[][](N+1, 2);
    auto cnt = new int[](N+1);
    int[] list;

    auto cylinders = new int[][](M+1);
    foreach (i; 1 .. M+1) {
        int k;
        readf("%d\n", k);

        cylinders[i] = readln.chomp.split.to!(int[]);

        int f = cylinders[i].front;
        top[f][cnt[f]] = i;
        ++cnt[f];
        if (cnt[f] == 2) {
            list ~= f;
        }
    }

    while (!list.empty) {
        int l = list.front;
        list.popFront;
        --N;

        foreach (t; top[l]) {
            cylinders[t].popFront;

            if (cylinders[t].empty) {
                continue;
            }

            int f = cylinders[t].front;
            top[f][cnt[f]] = t;
            ++cnt[f];
            if (cnt[f] == 2) {
                list ~= f;
            }
        }
    }

    if (N == 0) {
        writeln("Yes");
    }
    else {
        writeln("No");
    }
}