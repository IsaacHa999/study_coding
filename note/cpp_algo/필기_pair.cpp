#include <bits/stdc++.h>
using namespace std;

int main(void)
{
    pair<int, int> t1 = make_pair(10, 13);
    pair<int, int> t2 = {4, 6};
    cout << t2.first << ' ' << t2.second << '\n';
    if (t2 < t1)
        cout << "t2 < t1";
}

void pair_basic()
{
    // 스택에 pair 바로 넣기: {}로 묶어서 넣기
    //  tower.push({height, i});
}
