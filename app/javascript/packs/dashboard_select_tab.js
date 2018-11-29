 function selectDashboardTab() {
  const firstTab = document.querySelectorAll('.tablinks')[0];

  document.addEventListener("DOMContentLoaded", () => {
    firstTab.click();
    // Add here your addEventListener code
  });
}

selectDashboardTab();

  // document.querySelectorAll('.tablinks')[0].click();
